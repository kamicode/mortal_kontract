<?php
/**
 * @version     1.0.0
 * @package     com_mortal_kontracts
 * @copyright   Copyright (C) 2014. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 * @author      Jacques Langlois <j@kamicode.com> - kamicode.com
 */

// No direct access
defined('_JEXEC') or die;

jimport('joomla.application.component.controllerform');

/**
 * Provider controller class.
 */
class Mortal_kontractsControllerProvider extends JControllerForm
{

    function __construct() {
        $this->view_list = 'providers';
        parent::__construct();
    }

}