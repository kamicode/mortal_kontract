<?php

/**
 * @version     1.0.1
 * @package     com_mortal_kontracts
 * @copyright   Copyright (C) 2014. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 * @author      Jacques Langlois <j@kamicode.com> - kamicode.com
 */
// No direct access
defined('_JEXEC') or die;

jimport('joomla.application.component.view');

/**
 * View class for a list of Mortal_kontracts.
 */
class Mortal_kontractsViewProviders extends JViewLegacy {

    protected $items;
    protected $pagination;
    protected $state;

    /**
     * Display the view
     */
    public function display($tpl = null) {
        $this->state = $this->get('State');
        $this->items = $this->get('Items');
        $this->pagination = $this->get('Pagination');

        // Check for errors.
        if (count($errors = $this->get('Errors'))) {
            throw new Exception(implode("\n", $errors));
        }

        Mortal_kontractsHelper::addSubmenu('providers');

        $this->addToolbar();

        $this->sidebar = JHtmlSidebar::render();
        parent::display($tpl);
    }

    /**
     * Add the page title and toolbar.
     *
     * @since	1.6
     */
    protected function addToolbar() {
        require_once JPATH_COMPONENT . '/helpers/mortal_kontracts.php';

        $state = $this->get('State');
        $canDo = Mortal_kontractsHelper::getActions($state->get('filter.category_id'));

        JToolBarHelper::title(JText::_('COM_MORTAL_KONTRACTS_TITLE_PROVIDERS'), 'providers.png');

        //Check if the form exists before showing the add/edit buttons
        $formPath = JPATH_COMPONENT_ADMINISTRATOR . '/views/provider';
        if (file_exists($formPath)) {

            if ($canDo->get('core.create')) {
                JToolBarHelper::addNew('provider.add', 'JTOOLBAR_NEW');
            }

            if ($canDo->get('core.edit') && isset($this->items[0])) {
                JToolBarHelper::editList('provider.edit', 'JTOOLBAR_EDIT');
            }
        }

        if ($canDo->get('core.edit.state')) {

            if (isset($this->items[0]->state)) {
                JToolBarHelper::divider();
                JToolBarHelper::custom('providers.publish', 'publish.png', 'publish_f2.png', 'JTOOLBAR_PUBLISH', true);
                JToolBarHelper::custom('providers.unpublish', 'unpublish.png', 'unpublish_f2.png', 'JTOOLBAR_UNPUBLISH', true);
            } else if (isset($this->items[0])) {
                //If this component does not use state then show a direct delete button as we can not trash
                JToolBarHelper::deleteList('', 'providers.delete', 'JTOOLBAR_DELETE');
            }

            if (isset($this->items[0]->state)) {
                JToolBarHelper::divider();
                JToolBarHelper::archiveList('providers.archive', 'JTOOLBAR_ARCHIVE');
            }
            if (isset($this->items[0]->checked_out)) {
                JToolBarHelper::custom('providers.checkin', 'checkin.png', 'checkin_f2.png', 'JTOOLBAR_CHECKIN', true);
            }
        }

        //Show trash and delete for components that uses the state field
        if (isset($this->items[0]->state)) {
            if ($state->get('filter.state') == -2 && $canDo->get('core.delete')) {
                JToolBarHelper::deleteList('', 'providers.delete', 'JTOOLBAR_EMPTY_TRASH');
                JToolBarHelper::divider();
            } else if ($canDo->get('core.edit.state')) {
                JToolBarHelper::trash('providers.trash', 'JTOOLBAR_TRASH');
                JToolBarHelper::divider();
            }
        }

        if ($canDo->get('core.admin')) {
            JToolBarHelper::preferences('com_mortal_kontracts');
        }

        //Set sidebar action - New in 3.0
        JHtmlSidebar::setAction('index.php?option=com_mortal_kontracts&view=providers');

        $this->extra_sidebar = '';
        
		JHtmlSidebar::addFilter(

			JText::_('JOPTION_SELECT_PUBLISHED'),

			'filter_published',

			JHtml::_('select.options', JHtml::_('jgrid.publishedOptions'), "value", "text", $this->state->get('filter.state'), true)

		);

		//Filter for the field connector
		$select_label = JText::sprintf('COM_MORTAL_KONTRACTS_FILTER_SELECT_LABEL', 'Connector');
		$options = array();
		$options[0] = new stdClass();
		$options[0]->value = "raw";
		$options[0]->text = "raw";
		$options[1] = new stdClass();
		$options[1]->value = "rss";
		$options[1]->text = "rss";
		$options[2] = new stdClass();
		$options[2]->value = "custom";
		$options[2]->text = "custom";
		JHtmlSidebar::addFilter(
			$select_label,
			'filter_connector',
			JHtml::_('select.options', $options , "value", "text", $this->state->get('filter.connector'), true)
		);

		//Filter for the field parser
		$select_label = JText::sprintf('COM_MORTAL_KONTRACTS_FILTER_SELECT_LABEL', 'Parser');
		$options = array();
		$options[0] = new stdClass();
		$options[0]->value = "raw";
		$options[0]->text = "raw";
		$options[1] = new stdClass();
		$options[1]->value = "craigslist";
		$options[1]->text = "craigslist";
		$options[2] = new stdClass();
		$options[2]->value = "kijiji";
		$options[2]->text = "kijiji";
		$options[3] = new stdClass();
		$options[3]->value = "smart";
		$options[3]->text = "smart";
		JHtmlSidebar::addFilter(
			$select_label,
			'filter_parser',
			JHtml::_('select.options', $options , "value", "text", $this->state->get('filter.parser'), true)
		);

    }

	protected function getSortFields()
	{
		return array(
		'a.id' => JText::_('JGRID_HEADING_ID'),
		'a.ordering' => JText::_('JGRID_HEADING_ORDERING'),
		'a.state' => JText::_('JSTATUS'),
		'a.checked_out' => JText::_('COM_MORTAL_KONTRACTS_PROVIDERS_CHECKED_OUT'),
		'a.checked_out_time' => JText::_('COM_MORTAL_KONTRACTS_PROVIDERS_CHECKED_OUT_TIME'),
		'a.name' => JText::_('COM_MORTAL_KONTRACTS_PROVIDERS_NAME'),
		'a.connector' => JText::_('COM_MORTAL_KONTRACTS_PROVIDERS_CONNECTOR'),
		'a.parser' => JText::_('COM_MORTAL_KONTRACTS_PROVIDERS_PARSER'),
		'a.average_rating' => JText::_('COM_MORTAL_KONTRACTS_PROVIDERS_AVERAGE_RATING'),
		);
	}

}
