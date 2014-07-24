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
                        "description"=>$item->get_description(), 
                        "created"=>date("Y-m-d H:i:s"),
                        "posted"=>$item->get_date("Y-m-d H:i:s"),
                        "guid"=>$item->get_id(false),
                        "checksum"=>$item->get_id(true),
                        "hits"=>0,
                        "region"=>"canada",
                        "accepted_for_quote"=>false,
                        "rating"=>3,
                        "provider_id"=>$providerId);
                    
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

                    foreach($html->find('span') as $element)
                    {
                       if($element->class == 'summary')
                       {
                           $lead['description'] = '<pre>' . $element->plaintext . '</pre>';
                       }
                    }
                }
                
                return $leads;
                break;
            default:
                return $leads;
                break;
        }

        return $leads;
    }

}
