<?php

/**
 * Implementation of hook_views_default_views().
 */
function ec_feeds_views_default_views() {
  $views = array();

  // Exported view: feed_items
$view = new view;
$view->name = 'feed_items';
$view->description = 'attach feed items to feed node';
$view->tag = 'ec';
$view->view_php = '';
$view->base_table = 'node';
$view->is_cacheable = FALSE;
$view->api_version = 2;
$view->disabled = FALSE; /* Edit this to true to make a default view disabled initially */
$handler = $view->new_display('default', 'Defaults', 'default');
$handler->override_option('arguments', array(
  'feed_nid' => array(
    'default_action' => 'default',
    'style_plugin' => 'default_summary',
    'style_options' => array(),
    'wildcard' => 'all',
    'wildcard_substitution' => 'All',
    'title' => '',
    'breadcrumb' => '',
    'default_argument_type' => 'node',
    'default_argument' => '',
    'validate_type' => 'none',
    'validate_fail' => 'not found',
    'break_phrase' => 0,
    'not' => 0,
    'id' => 'feed_nid',
    'table' => 'feeds_node_item',
    'field' => 'feed_nid',
    'validate_user_argument_type' => 'uid',
    'validate_user_roles' => array(
      '2' => 0,
      '5' => 0,
      '3' => 0,
      '4' => 0,
      '6' => 0,
    ),
    'relationship' => 'none',
    'default_options_div_prefix' => '',
    'default_argument_user' => 0,
    'default_argument_fixed' => '',
    'default_argument_php' => '',
    'validate_argument_node_type' => array(
      'webform' => 0,
      'blog' => 0,
      'poll' => 0,
      'event' => 0,
      'group' => 0,
      'page' => 0,
      'feed' => 0,
      'feed_item' => 0,
      'product' => 0,
    ),
    'validate_argument_node_access' => 0,
    'validate_argument_nid_type' => 'nid',
    'validate_argument_vocabulary' => array(
      '3' => 0,
      '2' => 0,
    ),
    'validate_argument_type' => 'tid',
    'validate_argument_transform' => 0,
    'validate_user_restrict_roles' => 0,
    'validate_argument_is_member' => 0,
    'validate_argument_php' => '',
  ),
));
$handler->override_option('access', array(
  'type' => 'none',
));
$handler->override_option('cache', array(
  'type' => 'none',
));
$handler->override_option('use_pager', '1');
$handler->override_option('row_plugin', 'node');
$handler->override_option('row_options', array(
  'relationship' => 'none',
  'build_mode' => 'full',
  'links' => 0,
  'comments' => 0,
));
$handler = $view->new_display('node_content', 'Node content', 'node_content_1');
$handler->override_option('types', array(
  'feed' => 'feed',
));
$handler->override_option('modes', array(
  '0' => 'full',
));
$handler->override_option('argument_mode', 'nid');
$handler->override_option('default_argument', '');


  $views[$view->name] = $view;

  return $views;
}
