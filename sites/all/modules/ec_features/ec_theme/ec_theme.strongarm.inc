<?php

/**
 * Implementation of hook_strongarm().
 */
function ec_theme_strongarm() {
  $export = array();

  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'theme_default';
  $strongarm->value = 'cti_flex';

  $export['theme_default'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'theme_settings';
  $strongarm->value = array(
    'toggle_logo' => 0,
    'toggle_name' => 1,
    'toggle_slogan' => 1,
    'toggle_mission' => 0,
    'toggle_node_user_picture' => 0,
    'toggle_comment_user_picture' => 1,
    'toggle_search' => 1,
    'toggle_favicon' => 1,
    'toggle_primary_links' => 1,
    'toggle_secondary_links' => 1,
    'toggle_node_info_blog' => 1,
    'toggle_node_info_book' => 1,
    'toggle_node_info_event' => 1,
    'toggle_node_info_forum' => 1,
    'toggle_node_info_group' => 0,
    'toggle_node_info_guidance' => 0,
    'toggle_node_info_page' => 1,
    'toggle_node_info_panel' => 0,
    'toggle_node_info_poll' => 1,
    'toggle_node_info_webform' => 1,
    'default_logo' => '0',
    'logo_path' => 'sites/default/files/logo.gif',
    'logo_upload' => '',
    'default_favicon' => '0',
    'favicon_path' => '',
    'favicon_upload' => '',
    'popups' => '',
    'popups_content_selector' => 'div.left-corner > div.clear-block:last',
    'zen_block_editing' => '',
    'breadcrumb' => '',
    'zen_rebuild_registry' => '',
    'headerimg' => '',
    'cssPreload' => '',
    'node_type_specific' => '',
    'seo' => '',
    'themedev' => '',
  );

  $export['theme_settings'] = $strongarm;
  return $export;
}
