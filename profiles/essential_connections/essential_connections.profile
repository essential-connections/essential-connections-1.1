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

	
	module_enable(array(
	'ec_base',
	'ec_delegate_menu',
	'ec_permissions_lock',
	'ec_protect_critical_users',
	
	
	
	
	));
	
    //cache_clear_all();
    //drupal_rebuild_theme_registry();
    drupal_flush_all_caches();

    if (function_exists('strongarm_init')) {
      strongarm_init();
    }

    $revert = array(
      'ec_base' => array('user_permission'),
	  'ec_delegate_menu' => array('user_permission','variable'),
	  'ec_permissions_lock' => array('variable'),
    ); 
    features_revert($revert);

    menu_rebuild();
    node_access_rebuild();
    
  }

}
