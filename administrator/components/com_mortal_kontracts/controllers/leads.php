<?php
/**
 * @version     1.0.2
 * @package     com_mortal_kontracts
 * @copyright   Copyright (C) 2014. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 * @author      Jacques Langlois <j@kamicode.com> - kamicode.com
 */

// No direct access.
defined('_JEXEC') or die;

jimport('joomla.application.component.controlleradmin');

/**
 * Leads list controller class.
 */
class Mortal_kontractsControllerLeads extends JControllerAdmin
{
	/**
	 * Proxy for getModel.
	 * @since	1.6
	 */
	public function getModel($name = 'lead', $prefix = 'Mortal_kontractsModel')
	{
		$model = parent::getModel($name, $prefix, array('ignore_request' => true));
		return $model;
	}
    
    
	/**
	 * Method to save the submitted ordering values for records via AJAX.
	 *
	 * @return  void
	 *
	 * @since   3.0
	 */
	public function saveOrderAjax()
	{
		// Get the input
		$input = JFactory::getApplication()->input;
		$pks = $input->post->get('cid', array(), 'array');
		$order = $input->post->get('order', array(), 'array');

		// Sanitize the input
		JArrayHelper::toInteger($pks);
		JArrayHelper::toInteger($order);

		// Get the model
		$model = $this->getModel();

		// Save the ordering
		$return = $model->saveorder($pks, $order);

		if ($return)
		{
			echo "1";
		}

		// Close the application
		JFactory::getApplication()->close();
	}

    public function retrieve()
    {
        $providers_model = parent::getModel('providers', 'Mortal_kontractsModel', array('ignore_request' => true));
        $lead_model = parent::getModel('lead', 'Mortal_kontractsModel', array('ignore_request' => true));


        $providers = $providers_model->getItems();

        if(count($providers) > 0)
        {
            foreach($providers as $provider)
            {
                $lead_list = array();
                $lead_list  = Mortal_kontractsHelper::getLeadList($provider->url, $provider->connector);

                $lead_data = array(); //$data['id'],
                $lead_data = Mortal_kontractsHelper::getLeadItem($lead_list, $provider->parser);

                foreach($lead_data as $lead)
                {
                    $data = array();
                    $data['id']='0';
                    $data['name'] = $lead['title'];
                    $data['description']= $lead['description'];
                    $data['url']= $lead['url'];
                    $data['checksum']= $lead['guid'];
                    $data['hits']= 0;
                    $data['provider_id']= $provider->id;
                    $data['region']= 'TBD';
                    $data['accepted_for_quote']= false;
                    $data['rating']= 3;
                    $data['posted']= $lead['publisheddate'];
                    $lead_model->save($data);
                }
            }
        }

        $this->setRedirect(JRoute::_('index.php?option=com_mortal_kontracts&view=leads', false));
    }
    
}