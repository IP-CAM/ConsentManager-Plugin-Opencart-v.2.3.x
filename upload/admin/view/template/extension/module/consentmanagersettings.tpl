<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-payment" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a>
      </div>
       <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
      <div class="alert alert-danger alert-dismissible"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
        <button type="button" class="close" data-dismiss="alert">&times;</button>
      </div>
    <?php } ?>

      <div style="">
        <span style="margin-left:12px; line-height: 25px"><?php echo $text_consentmanager; ?></span><br/>
        <span style="margin-left:12px; line-height: 25px"><?php echo $text_consentmanager_suppport; ?></span>
      </div>

    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-payment" class="form-horizontal">
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
            <div class="col-sm-10">
              <select name="consentmanager_status" id="input-status" class="form-control">
				<?php if ($consentmanager_status) { ?>
                  <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                  <option value="0"><?php echo $text_disabled; ?></option>
               <?php } else { ?>
                  <option value="1"><?php echo $text_enabled; ?></option>
                  <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>  
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input_cmp_id"><span data-toggle="tooltip" title="<?php echo $help_cmp_id; ?>"><?php echo $entry_cmp_id; ?></span></label>
            <div class="col-sm-10">
              <input type="text" name="consentmanager_cmp_id" value="<?php echo $consentmanager_cmp_id; ?>" id="input_cmp_id" class="form-control"/>
			  <?php if ($error_cmp_id) { ?>
              <div class="text-danger"><?php echo $error_cmp_id; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_mode; ?></label>
            <div class="col-sm-10">
              <select name="consentmanager_mode" id="input-status" class="form-control">
				<?php if ($consentmanager_mode) { ?>
                  <option value="1" selected="selected"><?php echo $text_semi_automatic; ?></option>
                  <option value="0"><?php echo $text_automatic; ?></option>
                <?php } else { ?>
                  <option value="1"><?php echo $text_semi_automatic; ?></option>
                  <option value="0" selected="selected"><?php echo $text_automatic; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>  
          <div class="form-group" style="display: none">
            <label class="col-sm-2 control-label" for="input_custom_html"><?php echo $entry_custom_html; ?></label>
            <div class="col-sm-10">
              <textarea type="text" name="consentmanager_custom_html" id="input_custom_html" class="form-control" rows="8" cols="80"><?php echo $consentmanager_custom_html; ?></textarea>
                </div>
          </div>
           
        </form>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>