<?php

/**
 * @version     1.0.2
 * @package     com_mortal_kontracts
 * @copyright   Copyright (C) 2014. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 * @author      Jacques Langlois <j@kamicode.com> - kamicode.com
 */
// No direct access
defined('_JEXEC') or die;

/**
 * Mortal_kontracts helper.
 */
class Mortal_kontractsHelper {

    /**
     * Configure the Linkbar.
     */
    public static function addSubmenu($vName = '') {
        		JHtmlSidebar::addEntry(
			JText::_('COM_MORTAL_KONTRACTS_TITLE_LEADS'),
			'index.php?option=com_mortal_kontracts&view=leads',
			$vName == 'leads'
		);
		JHtmlSidebar::addEntry(
			JText::_('COM_MORTAL_KONTRACTS_TITLE_PROVIDERS'),
			'index.php?option=com_mortal_kontracts&view=providers',
			$vName == 'providers'
		);

    }

    /**
     * Gets a list of the actions that can be performed.
     *
     * @return	JObject
     * @since	1.6
     */
    public static function getActions() {
        $user = JFactory::getUser();
        $result = new JObject;

        $assetName = 'com_mortal_kontracts';

        $actions = array(
            'core.admin', 'core.manage', 'core.create', 'core.edit', 'core.edit.own', 'core.edit.state', 'core.delete'
        );

        foreach ($actions as $action) {
            $result->set($action, $user->authorise($action, $assetName));
        }

        return $result;
    }

    public static function getLeadList($provider)
    {
        $url = $provider->url;
        $listParser = $provider->list_parser;
        $providerId = $provider->id;
        
        switch($listParser)
        {
            case 'rss':
            default:
                $feed = new SimplePie();
                $feed->set_feed_url($url);
                $feed->init();
                $feed->handle_content_type();

                $items = array();
                foreach($feed->get_items() as $item)
                {
                    $items[]= array("url"=>$item->get_permalink(), 
                        "title"=>$item->get_title(), 
                        "description"=>$item->get_description(), //description will most probably be overriden in lead parser
                        "created"=>date("Y-m-d H:i:s"),
                        "posted"=>$item->get_date("Y-m-d H:i:s"),
                        "guid"=>$item->get_id(false),
                        "checksum"=>$item->get_id(true),
                        "hits"=>0, //hits might be filled lead parser
                        "region"=>"canada", //TBD
                        "accepted_for_quote"=>false,
                        "rating"=>3,
                        "provider_id"=>$providerId,
                        "state"=>1);  //state is published by default
                    
                }
                break;
        }



        return $items;
    }

    public static function getLeadItem($leads, $type)
    {
        switch($type)
        {
            case 'indeed':
                foreach($leads as &$lead)
                {
                    $html = file_get_html($lead['url']);
                    $element = $html->find('span[class=summary]', 0);
                    if(!empty($element))
                    {
                        $lead['description'] = '<pre>' . $element->plaintext . '</pre>';
                    }
                }
                break;
            case 'kijiji':
                foreach($leads as &$lead)
                {
                    $html = file_get_html($lead['url']);
                    
                    //fetch description
                    $element = $html->find('div[id=UserContent]', 0);
                    if(!empty($element))
                    {
                        $element = $element->find('span[itemprop=description]', 0);
                        if(!empty($element))
                        {
                            $lead['description'] = '<pre>' . $element->plaintext . '</pre>';
                        }
                    }
                    
                    // fetch hits
                    $element = $html->find('input[name=adId]', 0);
                    if(!empty($element))
                    {
                        $json = file_get_contents("http://www.kijiji.ca/j-vac-inc-get.json?adId=" . $element->value);
                        $adObject = json_decode($json);
                        if(!empty($adObject->numVisits))
                        {
                            $lead['hits'] = $adObject->numVisits;
                        }
                    }
                    
                    // adjust rating
                    $element = $html->find('span[itemprop=employmentType]', 0);
                    if(!empty($element))
                    {
                        if(stristr($element->plaintext, 'Contract')) 
                        {
                            $lead['rating']++;
                        }
                    }
                }
                break;
            default:
                break;
        }

        return $leads;
    }

}
