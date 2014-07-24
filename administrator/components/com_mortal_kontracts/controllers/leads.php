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
        $leads_model = parent::getModel('leads', 'Mortal_kontractsModel', array('ignore_request' => true));

        $providers = $providers_model->getItems();

        if(count($providers) > 0)
        {
            foreach($providers as $provider)
            {
                $lead_list = Mortal_kontractsHelper::getLeadList($provider);
                $lead_data = Mortal_kontractsHelper::getLeadItem($lead_list, $provider->item_parser);

                foreach($lead_data as $lead)
                {
                    //check if checksum is already in db, if not add new record
                    $leads_model->setState('filter.checksum', $lead['checksum']);
                    if($leads_model->getTotal() == 0)
                    {
                        $lead_model = parent::getModel('lead', 'Mortal_kontractsModel', array('ignore_request' => true));
                        $lead_model->save($lead);
                    }
                }
            }
        }

        $this->setRedirect(JRoute::_('index.php?option=com_mortal_kontracts&view=leads', false));
    }
    
}