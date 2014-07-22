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
class Mortal_kontractsViewLeads extends JViewLegacy {

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

        Mortal_kontractsHelper::addSubmenu('leads');

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

        JToolBarHelper::title(JText::_('COM_MORTAL_KONTRACTS_TITLE_LEADS'), 'leads.png');

        //Check if the form exists before showing the add/edit buttons
        $formPath = JPATH_COMPONENT_ADMINISTRATOR . '/views/lead';
        if (file_exists($formPath)) {

            if ($canDo->get('core.create')) {
                JToolBarHelper::addNew('leads.retrieve', 'IMPORT');
            }

            if ($canDo->get('core.edit') && isset($this->items[0])) {
                JToolBarHelper::editList('lead.edit', 'JTOOLBAR_EDIT');
            }
        }

        if ($canDo->get('core.edit.state')) {

            if (isset($this->items[0]->state)) {
                JToolBarHelper::divider();
                JToolBarHelper::custom('leads.publish', 'publish.png', 'publish_f2.png', 'JTOOLBAR_PUBLISH', true);
                JToolBarHelper::custom('leads.unpublish', 'unpublish.png', 'unpublish_f2.png', 'JTOOLBAR_UNPUBLISH', true);
            } else if (isset($this->items[0])) {
                //If this component does not use state then show a direct delete button as we can not trash
                JToolBarHelper::deleteList('', 'leads.delete', 'JTOOLBAR_DELETE');
            }

            if (isset($this->items[0]->state)) {
                JToolBarHelper::divider();
                JToolBarHelper::archiveList('leads.archive', 'JTOOLBAR_ARCHIVE');
            }
            if (isset($this->items[0]->checked_out)) {
                JToolBarHelper::custom('leads.checkin', 'checkin.png', 'checkin_f2.png', 'JTOOLBAR_CHECKIN', true);
            }
        }

        //Show trash and delete for components that uses the state field
        if (isset($this->items[0]->state)) {
            if ($state->get('filter.state') == -2 && $canDo->get('core.delete')) {
                JToolBarHelper::deleteList('', 'leads.delete', 'JTOOLBAR_EMPTY_TRASH');
                JToolBarHelper::divider();
            } else if ($canDo->get('core.edit.state')) {
                JToolBarHelper::trash('leads.trash', 'JTOOLBAR_TRASH');
                JToolBarHelper::divider();
            }
        }

        if ($canDo->get('core.admin')) {
            JToolBarHelper::preferences('com_mortal_kontracts');
        }

        //Set sidebar action - New in 3.0
        JHtmlSidebar::setAction('index.php?option=com_mortal_kontracts&view=leads');

        $this->extra_sidebar = '';
        
		JHtmlSidebar::addFilter(

			JText::_('JOPTION_SELECT_PUBLISHED'),

			'filter_published',

			JHtml::_('select.options', JHtml::_('jgrid.publishedOptions'), "value", "text", $this->state->get('filter.state'), true)

		);
        //Filter for the field ".provider_id;
        jimport('joomla.form.form');
        $options = array();
        JForm::addFormPath(JPATH_COMPONENT . '/models/forms');
        $form = JForm::getInstance('com_mortal_kontracts.lead', 'lead');

        $field = $form->getField('provider_id');

        $query = $form->getFieldAttribute('filter_provider_id','query');
        $translate = $form->getFieldAttribute('filter_provider_id','translate');
        $key = $form->getFieldAttribute('filter_provider_id','key_field');
        $value = $form->getFieldAttribute('filter_provider_id','value_field');

        // Get the database object.
        $db = JFactory::getDBO();

        // Set the query and get the result list.
        $db->setQuery($query);
        $items = $db->loadObjectlist();

        // Build the field options.
        if (!empty($items))
        {
            foreach ($items as $item)
            {
                if ($translate == true)
                {
                    $options[] = JHtml::_('select.option', $item->$key, JText::_($item->$value));
                }
                else
                {
                    $options[] = JHtml::_('select.option', $item->$key, $item->$value);
                }
            }
        }

        JHtmlSidebar::addFilter(
            'Provider',
            'filter_provider_id',
            JHtml::_('select.options', $options, "value", "text", $this->state->get('filter.provider_id')),
            true
        );
		//Filter for the field region
		$select_label = JText::sprintf('COM_MORTAL_KONTRACTS_FILTER_SELECT_LABEL', 'Region');
		$options = array();
		$options[0] = new stdClass();
		$options[0]->value = "canada";
		$options[0]->text = "canada";
		$options[1] = new stdClass();
		$options[1]->value = "quebec";
		$options[1]->text = "quebec";
		$options[2] = new stdClass();
		$options[2]->value = "US";
		$options[2]->text = "US";
		$options[3] = new stdClass();
		$options[3]->value = "EU";
		$options[3]->text = "Europe";
		$options[4] = new stdClass();
		$options[4]->value = "Other";
		$options[4]->text = "other";
		JHtmlSidebar::addFilter(
			$select_label,
			'filter_region',
			JHtml::_('select.options', $options , "value", "text", $this->state->get('filter.region'), true)
		);

    }

	protected function getSortFields()
	{
		return array(
		'a.id' => JText::_('JGRID_HEADING_ID'),
		'a.state' => JText::_('JSTATUS'),
		'a.checked_out' => JText::_('COM_MORTAL_KONTRACTS_LEADS_CHECKED_OUT'),
		'a.checked_out_time' => JText::_('COM_MORTAL_KONTRACTS_LEADS_CHECKED_OUT_TIME'),
		'a.name' => JText::_('COM_MORTAL_KONTRACTS_LEADS_NAME'),
		'a.description' => JText::_('COM_MORTAL_KONTRACTS_LEADS_DESCRIPTION'),
		'a.hits' => JText::_('COM_MORTAL_KONTRACTS_LEADS_HITS'),
		'a.provider_id' => JText::_('COM_MORTAL_KONTRACTS_LEADS_PROVIDER_ID'),
		'a.region' => JText::_('COM_MORTAL_KONTRACTS_LEADS_REGION'),
		'a.accepted_for_quote' => JText::_('COM_MORTAL_KONTRACTS_LEADS_ACCEPTED_FOR_QUOTE'),
		'a.rating' => JText::_('COM_MORTAL_KONTRACTS_LEADS_RATING'),
		);
	}

}
