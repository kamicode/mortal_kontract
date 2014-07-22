<?php

/**
 * @version     1.0.1
 * @package     com_mortal_kontracts
 * @copyright   Copyright (C) 2014. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 * @author      Jacques Langlois <j@kamicode.com> - kamicode.com
 */
defined('_JEXEC') or die;

jimport('joomla.application.component.modellist');

/**
 * Methods supporting a list of Mortal_kontracts records.
 */
class Mortal_kontractsModelLeads extends JModelList {

    /**
     * Constructor.
     *
     * @param    array    An optional associative array of configuration settings.
     * @see        JController
     * @since    1.6
     */
    public function __construct($config = array()) {
        if (empty($config['filter_fields'])) {
            $config['filter_fields'] = array(
                                'id', 'a.id',
                'state', 'a.state',
                'created_by', 'a.created_by',
                'name', 'a.name',
                'description', 'a.description',
                'url', 'a.url',
                'checksum', 'a.checksum',
                'hits', 'a.hits',
                'provider_id', 'a.provider_id',
                'region', 'a.region',
                'accepted_for_quote', 'a.accepted_for_quote',
                'rating', 'a.rating',

            );
        }

        parent::__construct($config);
    }

    /**
     * Method to auto-populate the model state.
     *
     * Note. Calling getState in this method will result in recursion.
     */
    protected function populateState($ordering = null, $direction = null) {
        // Initialise variables.
        $app = JFactory::getApplication('administrator');

        // Load the filter state.
        $search = $app->getUserStateFromRequest($this->context . '.filter.search', 'filter_search');
        $this->setState('filter.search', $search);

        $published = $app->getUserStateFromRequest($this->context . '.filter.state', 'filter_published', '', 'string');
        $this->setState('filter.state', $published);

        
		//Filtering provider_id
		$this->setState('filter.provider_id', $app->getUserStateFromRequest($this->context.'.filter.provider_id', 'filter_provider_id', '', 'string'));

		//Filtering region
		$this->setState('filter.region', $app->getUserStateFromRequest($this->context.'.filter.region', 'filter_region', '', 'string'));


        // Load the parameters.
        $params = JComponentHelper::getParams('com_mortal_kontracts');
        $this->setState('params', $params);

        // List state information.
        parent::populateState('a.name', 'asc');
    }

    /**
     * Method to get a store id based on model configuration state.
     *
     * This is necessary because the model is used by the component and
     * different modules that might need different sets of data or different
     * ordering requirements.
     *
     * @param	string		$id	A prefix for the store id.
     * @return	string		A store id.
     * @since	1.6
     */
    protected function getStoreId($id = '') {
        // Compile the store id.
        $id.= ':' . $this->getState('filter.search');
        $id.= ':' . $this->getState('filter.state');

        return parent::getStoreId($id);
    }

    /**
     * Build an SQL query to load the list data.
     *
     * @return	JDatabaseQuery
     * @since	1.6
     */
    protected function getListQuery() {
        // Create a new query object.
        $db = $this->getDbo();
        $query = $db->getQuery(true);

        // Select the required fields from the table.
        $query->select(
                $this->getState(
                        'list.select', 'DISTINCT a.*'
                )
        );
        $query->from('`#__mortal_kontracts_leads` AS a');

        
		// Join over the users for the checked out user
		$query->select("uc.name AS editor");
		$query->join("LEFT", "#__users AS uc ON uc.id=a.checked_out");
		// Join over the user field 'created_by'
		$query->select('created_by.name AS created_by');
		$query->join('LEFT', '#__users AS created_by ON created_by.id = a.created_by');
		// Join over the foreign key 'provider_id'
		$query->select('#__mortal_kontracts_providers_1388949.name AS providers_name_1388949');
		$query->join('LEFT', '#__mortal_kontracts_providers AS #__mortal_kontracts_providers_1388949 ON #__mortal_kontracts_providers_1388949.id = a.provider_id');

        

		// Filter by published state
		$published = $this->getState('filter.state');
		if (is_numeric($published)) {
			$query->where('a.state = ' . (int) $published);
		} else if ($published === '') {
			$query->where('(a.state IN (0, 1))');
		}

        // Filter by search in title
        $search = $this->getState('filter.search');
        if (!empty($search)) {
            if (stripos($search, 'id:') === 0) {
                $query->where('a.id = ' . (int) substr($search, 3));
            } else {
                $search = $db->Quote('%' . $db->escape($search, true) . '%');
                $query->where('( a.name LIKE '.$search.'  OR  a.description LIKE '.$search.'  OR  a.provider_id LIKE '.$search.'  OR  a.region LIKE '.$search.' )');
            }
        }

        

		//Filtering provider_id
		$filter_provider_id = $this->state->get("filter.provider_id");
		if ($filter_provider_id) {
			$query->where("a.provider_id = '".$db->escape($filter_provider_id)."'");
		}

		//Filtering region
		$filter_region = $this->state->get("filter.region");
		if ($filter_region) {
			$query->where("a.region = '".$db->escape($filter_region)."'");
		}


        // Add the list ordering clause.
        $orderCol = $this->state->get('list.ordering');
        $orderDirn = $this->state->get('list.direction');
        if ($orderCol && $orderDirn) {
            $query->order($db->escape($orderCol . ' ' . $orderDirn));
        }

        return $query;
    }

    public function getItems() {
        $items = parent::getItems();
        
		foreach ($items as $oneItem) {

			if (isset($oneItem->provider_id)) {
				$values = explode(',', $oneItem->provider_id);

				$textValue = array();
				foreach ($values as $value){
					$db = JFactory::getDbo();
					$query = $db->getQuery(true);
					$query
							->select('name')
							->from('`#__mortal_kontracts_providers`')
							->where('id = ' . $db->quote($db->escape($value)));
					$db->setQuery($query);
					$results = $db->loadObject();
					if ($results) {
						$textValue[] = $results->name;
					}
				}

			$oneItem->provider_id = !empty($textValue) ? implode(', ', $textValue) : $oneItem->provider_id;

			}
					$oneItem->region = JText::_('COM_MORTAL_KONTRACTS_LEADS_REGION_OPTION_' . strtoupper($oneItem->region));
		}
        return $items;
    }

}
