<?php
/**
 * @version     1.0.0
 * @package     com_mortal_kontracts
 * @copyright   Copyright (C) 2014. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 * @author      Jacques Langlois <j@kamicode.com> - kamicode.com
 */
// no direct access
defined('_JEXEC') or die;

JHtml::addIncludePath(JPATH_COMPONENT . '/helpers/html');
JHtml::_('behavior.tooltip');
JHtml::_('behavior.formvalidation');
JHtml::_('formbehavior.chosen', 'select');
JHtml::_('behavior.keepalive');

// Import CSS
$document = JFactory::getDocument();
$document->addStyleSheet('components/com_mortal_kontracts/assets/css/mortal_kontracts.css');
?>
<script type="text/javascript">
    js = jQuery.noConflict();
    js(document).ready(function() {
        
	js('input:hidden.provider_id').each(function(){
		var name = js(this).attr('name');
		if(name.indexOf('provider_idhidden')){
			js('#jform_provider_id option[value="'+js(this).val()+'"]').attr('selected',true);
		}
	});
	js("#jform_provider_id").trigger("liszt:updated");
    });

    Joomla.submitbutton = function(task)
    {
        if (task == 'lead.cancel') {
            Joomla.submitform(task, document.getElementById('lead-form'));
        }
        else {
            
            if (task != 'lead.cancel' && document.formvalidator.isValid(document.id('lead-form'))) {
                
                Joomla.submitform(task, document.getElementById('lead-form'));
            }
            else {
                alert('<?php echo $this->escape(JText::_('JGLOBAL_VALIDATION_FORM_FAILED')); ?>');
            }
        }
    }
</script>

<form action="<?php echo JRoute::_('index.php?option=com_mortal_kontracts&layout=edit&id=' . (int) $this->item->id); ?>" method="post" enctype="multipart/form-data" name="adminForm" id="lead-form" class="form-validate">

    <div class="form-horizontal">
        <?php echo JHtml::_('bootstrap.startTabSet', 'myTab', array('active' => 'general')); ?>

        <?php echo JHtml::_('bootstrap.addTab', 'myTab', 'general', JText::_('COM_MORTAL_KONTRACTS_TITLE_LEAD', true)); ?>
        <div class="row-fluid">
            <div class="span10 form-horizontal">
                <fieldset class="adminform">

                    			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('id'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('id'); ?></div>
			</div>
				<input type="hidden" name="jform[state]" value="<?php echo $this->item->state; ?>" />
				<input type="hidden" name="jform[checked_out]" value="<?php echo $this->item->checked_out; ?>" />
				<input type="hidden" name="jform[checked_out_time]" value="<?php echo $this->item->checked_out_time; ?>" />

				<?php if(empty($this->item->created_by)){ ?>
					<input type="hidden" name="jform[created_by]" value="<?php echo JFactory::getUser()->id; ?>" />

				<?php } 
				else{ ?>
					<input type="hidden" name="jform[created_by]" value="<?php echo $this->item->created_by; ?>" />

				<?php } ?>			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('name'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('name'); ?></div>
			</div>
			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('description'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('description'); ?></div>
			</div>
			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('url'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('url'); ?></div>
			</div>
			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('checksum'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('checksum'); ?></div>
			</div>
			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('hits'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('hits'); ?></div>
			</div>
			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('provider_id'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('provider_id'); ?></div>
			</div>

			<?php
				foreach((array)$this->item->provider_id as $value): 
					if(!is_array($value)):
						echo '<input type="hidden" class="provider_id" name="jform[provider_idhidden]['.$value.']" value="'.$value.'" />';
					endif;
				endforeach;
			?>			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('region'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('region'); ?></div>
			</div>
			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('accepted_for_quote'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('accepted_for_quote'); ?></div>
			</div>
			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('rating'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('rating'); ?></div>
			</div>


                </fieldset>
            </div>
        </div>
        <?php echo JHtml::_('bootstrap.endTab'); ?>
        
        

        <?php echo JHtml::_('bootstrap.endTabSet'); ?>

        <input type="hidden" name="task" value="" />
        <?php echo JHtml::_('form.token'); ?>

    </div>
</form>