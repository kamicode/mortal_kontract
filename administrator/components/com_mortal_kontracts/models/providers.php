<?php

/**
 * @version     1.0.2
 * @package     com_mortal_kontracts
 * @copyright   Copyright (C) 2014. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 * @author      Jacques Langlois <j@kamicode.com> - kamicode.com
 */
defined('_JEXEC') or die;

jimport('joomla.application.component.modellist');


JLoader::register('simplepie', JPATH_LIBRARIES . '/simplepie/simplepie.php');
//require_once JPATH_COMPONENT_ADMINISTRATOR . '/helpers/autoloader.php';

/**
 * Methods supporting a list of Mortal_kontracts records.
 */
class Mortal_kontractsModelProviders extends JModelList {

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
                'ordering', 'a.ordering',
                'state', 'a.state',
                'created_by', 'a.created_by',
                'name', 'a.name',
                'connector', 'a.connector',
                'parser', 'a.parser',
                'average_rating', 'a.average_rating',
                'url', 'a.url',

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

        
        //Filtering connector
        $this->setState('filter.connector', $app->getUserStateFromRequest($this->context.'.filter.connector', 'filter_connector', '', 'string'));

        //Filtering parser
        $this->setState('filter.parser', $app->getUserStateFromRequest($this->context.'.filter.parser', 'filter_parser', '', 'string'));


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
        $query->from('`#__mortal_kontracts_providers` AS a');

        
		// Join over the users for the checked out user
		$query->select("uc.name AS editor");
		$query->join("LEFT", "#__users AS uc ON uc.id=a.checked_out");
		// Join over the user field 'created_by'
		$query->select('created_by.name AS created_by');
		$query->join('LEFT', '#__users AS created_by ON created_by.id = a.created_by');

        

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
                $query->where('( a.name LIKE '.$search.' )');
            }
        }

        

        //Filtering connector
        $filter_connector = $this->state->get("filter.connector");
        if ($filter_connector) {
            $query->where("a.connector = '".$db->escape($filter_connector)."'");
        }

        //Filtering parser
        $filter_parser = $this->state->get("filter.parser");
        if ($filter_parser) {
            $query->where("a.parser = '".$db->escape($filter_parser)."'");
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
        
        return $items;
    }


    public static function connect($url)
    {
        // this doesnt work -> $encodedUrl = urlencode($url);
        //$content = file_get_contents($url);
        $feed = new SimplePie();
        $feed->set_feed_url($url);
        $feed->init();
        $feed->handle_content_type();
        
        $items = array();
        foreach($feed->get_items() as $item)
        {
            $items[]= array("url"=>$item->get_permalink(), "title"=>$item->get_title(), "description"=>$item->get_description(), "date"=>$item->get_date());
        }
        
        return $items;
    }

    public static function parse($content)
    {
        return $content;
    }
}
