<?php
/**
 * @version     1.0.2
 * @package     com_mortal_kontracts
 * @copyright   Copyright (C) 2014. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 * @author      Jacques Langlois <j@kamicode.com> - kamicode.com
 */


// no direct access
defined('_JEXEC') or die;

// Access check.
if (!JFactory::getUser()->authorise('core.manage', 'com_mortal_kontracts')) 
{
	throw new Exception(JText::_('JERROR_ALERTNOAUTHOR'));
}


JLoader::register('MKConnector', JPATH_COMPONENT.'/models/MKConnector.php');


// Include dependancies
jimport('joomla.application.component.controller');

$controller	= JControllerLegacy::getInstance('Mortal_kontracts');
$controller->execute(JFactory::getApplication()->input->get('task'));
$controller->redirect();
