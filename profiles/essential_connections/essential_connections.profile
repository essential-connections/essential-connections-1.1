<?php
// $Id: essential-connections.profile,v 1.0 2010/03/04 05:13:44 Exp $

/**
 * Return an array of the modules to be enabled when this profile is installed.
 *
 * @return
 *   An array of modules to enable.
*/
function essential_connections_profile_modules() {
  $modules = array( 
	'ctools','features','strongarm',
	'ec_base',
	'ec_protect_critical_users',
	'ec_user',
	'ec_permissions_lock',
	'ec_delegate_menu',
	'ec_admin_access',
	'ec_views',
	'ec_simplemenu',
	'ec_help',
	'ec_backup_migrate',
	'ec_content',
	'ec_filefield',
	'ec_filefield_post_install',
	'ec_block',
	'ec_formats_filters',
	'ec_htmlpurifier',
	'ec_imagecache',
	'ec_og',
	'ec_messaging_notifications',
	'ec_blog',
	'ec_page',
	'ec_event',
	'ec_webform',
	'ec_imce',
	'ec_ckeditor',
	'ec_vertical_tabs',
	'ec_clickpath',
	'ec_save_edit',
	'ec_statistics',
	'ec_taxonomy',
	'ec_theme',
	'ec_theme_acquia_marina',
	'ec_theme_acquia_prosper',
	'ec_theme_cti_flex',
	'ec_theme_garland',
	'ec_theme_mix_and_match',
	'ec_theme_zeropoint',
	'ec_uc',
  ); 
  return $modules;
} 

/**
 * Return a description of the profile for the initial installation screen.
 *
 * @return
 *   An array with keys 'name' and 'description' describing this profile,
 *   and optional 'language' to override the language selection for
 *   language-specific profiles.
 */
function essential_connections_profile_details() {
  return array(
    'name' => 'essential-connections site',
    'description' => 'essential-connections profile',
  );
}

/**
 * Return a list of tasks that this profile supports.
 *
 * @return
 *   A keyed array of tasks the profile will perform during
 *   the final stage. The keys of the array will be used internally,
 *   while the values will be displayed to the user in the installer
 *   task list.
 */
function essential_connections_profile_task_list() {
  return array(
    'ec' => 'main',
  );
}
/**
 * Implementation of hook_profile_tasks().
 */
function essential_connections_profile_tasks(&$task, $url) {
  // first run is 'profile'
  if($task == 'profile'){
    //variable_set('site_frontpage', 'user/login');
	variable_set('theme_default', 'cti_flex');
	variable_set('preprocess_css', '1');
	variable_set('preprocess_js', '1');

	
	module_enable(array(
	//'ec_filefield_post_install',
	//'ec_formats_filters_post_install',
	'ec_frontpage',

	));
	
	
    //cache_clear_all();
    //drupal_rebuild_theme_registry();
    //drupal_flush_all_caches();

    if (function_exists('strongarm_init')) {
      strongarm_init();
    }

    $revert = array(
	'ec_base' => array('user_permission','variable'),
	'ec_protect_critical_users' => array('user_permission','variable'),
	'ec_user' => array('user_permission','variable'),
	'ec_permissions_lock' => array('user_permission','variable'),
	'ec_delegate_menu' => array('user_permission','variable'),
	'ec_admin_access' => array('user_permission','variable'),
	'ec_views' => array('user_permission','variable'),
	'ec_simplemenu' => array('user_permission','variable'),
	'ec_help' => array('user_permission','variable'),
	'ec_backup_migrate' => array('user_permission','variable'),
	'ec_content' => array('user_permission','variable'),
	'ec_filefield' => array('user_permission','variable'),
	'ec_block' => array('user_permission','variable'),
	'ec_formats_filters' => array('user_permission','variable'),
	'ec_htmlpurifier' => array('user_permission','variable'),
	'ec_imagecache' => array('user_permission','variable'),
	'ec_og' => array('user_permission','variable'),
	'ec_messaging_notifications' => array('user_permission','variable'),
	'ec_blog' => array('user_permission','variable'),
	'ec_page' => array('user_permission','variable'),
	'ec_event' => array('user_permission','variable'),
	'ec_webform' => array('user_permission','variable'),
	'ec_imce' => array('user_permission','variable'),
	'ec_ckeditor' => array('user_permission','variable'),
	'ec_vertical_tabs' => array('user_permission','variable'),
	'ec_clickpath' => array('user_permission','variable'),
	'ec_save_edit' => array('user_permission','variable'),
	'ec_statistics' => array('user_permission','variable'),
	'ec_taxonomy' => array('user_permission','variable'),
	'ec_theme' => array('user_permission','variable'),
	'ec_theme_acquia_marina' => array('user_permission','variable'),
	'ec_theme_acquia_prosper' => array('user_permission','variable'),
	'ec_theme_cti_flex' => array('user_permission','variable'),
	'ec_theme_garland' => array('user_permission','variable'),
	'ec_theme_mix_and_match' => array('user_permission','variable'),
	'ec_theme_zeropoint' => array('user_permission','variable'),
	'ec_uc' => array('user_permission','variable'),
    ); 
    features_revert($revert);

	drupal_flush_all_caches();
    //menu_rebuild();
    node_access_rebuild();
    
  }

}
