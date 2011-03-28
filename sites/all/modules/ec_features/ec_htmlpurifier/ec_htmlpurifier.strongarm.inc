<?php

/**
 * Implementation of hook_strongarm().
 */
function ec_htmlpurifier_strongarm() {
  $export = array();
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'htmlpurifier_config_2';
  $strongarm->value = array(
    'Attr.EnableID' => '0',
    'AutoFormat.AutoParagraph' => '1',
    'AutoFormat.Linkify' => '1',
    'AutoFormat.RemoveEmpty' => '0',
    'Filter.YouTube' => '0',
    'Null_HTML.Allowed' => '1',
    'HTML.ForbiddenAttributes' => '',
    'HTML.ForbiddenElements' => '',
    'URI.DisableExternalResources' => '1',
    'URI.DisableResources' => '0',
    'Null_URI.Munge' => '1',
  );

  $export['htmlpurifier_config_2'] = $strongarm;
  return $export;
}
