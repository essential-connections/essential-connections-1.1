<?php

/**
 * Implementation of hook_strongarm().
 */
function ec_simplemenu_strongarm() {
  $export = array();
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'simplemenu_cache_menu';
  $strongarm->value = 1;

  $export['simplemenu_cache_menu'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'simplemenu_call_theme';
  $strongarm->value = 0;

  $export['simplemenu_call_theme'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'simplemenu_css_filename';
  $strongarm->value = '';

  $export['simplemenu_css_filename'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'simplemenu_detect_popup';
  $strongarm->value = 1;

  $export['simplemenu_detect_popup'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'simplemenu_dropdown_zindex';
  $strongarm->value = '9999';

  $export['simplemenu_dropdown_zindex'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'simplemenu_effect';
  $strongarm->value = 'opacity';

  $export['simplemenu_effect'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'simplemenu_effect_speed';
  $strongarm->value = 'fast';

  $export['simplemenu_effect_speed'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'simplemenu_element';
  $strongarm->value = 'body';

  $export['simplemenu_element'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'simplemenu_element_method';
  $strongarm->value = 'prepend';

  $export['simplemenu_element_method'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'simplemenu_exclusions';
  $strongarm->value = array(
    'acquia_marina' => 0,
    'acquia_prosper' => 0,
    'bluemarine' => 0,
    'chameleon' => 0,
    'cti_flex' => 0,
    'fusion_core' => 0,
    'fusion_starter' => 0,
    'garland' => 0,
    'marvin' => 0,
    'minnelli' => 0,
    'pushbutton' => 0,
    'STARTERKIT' => 0,
    'zen' => 0,
    'zen_classic' => 0,
    'zeropoint' => 0,
  );

  $export['simplemenu_exclusions'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'simplemenu_fix';
  $strongarm->value = 'top';

  $export['simplemenu_fix'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'simplemenu_hide_delay';
  $strongarm->value = '800';

  $export['simplemenu_hide_delay'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'simplemenu_hide_when_empty';
  $strongarm->value = 1;

  $export['simplemenu_hide_when_empty'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'simplemenu_inactive_parents_theme_function';
  $strongarm->value = array(
    'cti_flex' => 'dhtml_menu_theme_menu_item_link',
  );

  $export['simplemenu_inactive_parents_theme_function'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'simplemenu_menu_scope';
  $strongarm->value = 'footer';

  $export['simplemenu_menu_scope'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'simplemenu_menubar_zindex';
  $strongarm->value = '9999';

  $export['simplemenu_menubar_zindex'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'simplemenu_menus';
  $strongarm->value = array(
    'navigation:0' => 'navigation:0',
  );

  $export['simplemenu_menus'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'simplemenu_multi_menu_theme_function';
  $strongarm->value = array(
    'cti_flex' => 'zen_menu_item_link',
    'zeropoint' => 'dhtml_menu_theme_menu_item_link',
    'acquia_prosper' => 'theme_menu_item_link',
    'garland' => 'dhtml_menu_theme_menu_item_link',
    'pushbutton' => 'dhtml_menu_theme_menu_item_link',
    'mix_and_match' => 'theme_menu_item_link',
    'minnelli' => 'theme_menu_item_link',
    'adaptivetheme' => 'theme_menu_item_link',
    'adaptivetheme_subtheme' => 'theme_menu_item_link',
    'adaptivetheme_admin' => 'theme_menu_item_link',
    'pixture_reloaded' => 'theme_menu_item_link',
  );

  $export['simplemenu_multi_menu_theme_function'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'simplemenu_running';
  $strongarm->value = FALSE;

  $export['simplemenu_running'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'simplemenu_superfish_version';
  $strongarm->value = 'superfish-1.4.1.js';

  $export['simplemenu_superfish_version'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'simplemenu_theme';
  $strongarm->value = 'blackblue';

  $export['simplemenu_theme'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'simplemenu_uid1';
  $strongarm->value = 0;

  $export['simplemenu_uid1'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'simplemenu_visibility_operator';
  $strongarm->value = '0';

  $export['simplemenu_visibility_operator'] = $strongarm;
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'simplemenu_visibility_pages';
  $strongarm->value = '';

  $export['simplemenu_visibility_pages'] = $strongarm;
  return $export;
}
