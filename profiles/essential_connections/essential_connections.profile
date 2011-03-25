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
function _essential_connections_modules() {
  return array(
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
	//'ec_filefield',
	//'ec_filefield_post_install',
	'ec_block',
	'ec_formats_filters',
	'ec_htmlpurifier',
	'ec_imagecache',
	'ec_og',
	'ec_messaging_notifications',
	'ec_blog',
	'ec_poll',
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
	'ec_frontpage',
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
    'ec-modules-batch' => 'Install modules',
	'ec-configure-batch' => 'Configure',
  );
}
/**
 * Implementation of hook_profile_tasks().
 */
function essential_connections_profile_tasks(&$task, $url) {
  
  // first run is 'profile'
  if($task == 'profile'){
    //$task = 'ec1';
	
	//module_enable(array(
	//'ec_frontpage',
	//));

	//drupal_flush_all_caches();
    //node_access_rebuild();
	//drupal_cron_run();
	
	//variable_set('install_task', 'ec1');
	$task = 'ec-modules';	
  }
  if ($task == 'ec-modules') {
    $modules = _essential_connections_modules();
    $files = module_rebuild_cache();
    // Create batch
    foreach ($modules as $module) {
      $batch['operations'][] = array('_install_module_batch', array($module, $files[$module]->info['name']));
    }    
    $batch['finished'] = '_essential_connections_profile_batch_finished';
    $batch['title'] = st('Installing @drupal', array('@drupal' => drupal_install_profile_name()));
    $batch['error_message'] = st('The installation has encountered an error.');

    // Start a batch, switch to 'intranet-modules-batch' task. We need to
    // set the variable here, because batch_process() redirects.
    variable_set('install_task', 'ec-modules-batch');
    batch_set($batch);
    batch_process($url, $url);
    // Jut for cli installs. We'll never reach here on interactive installs.
    return;
  }
  
  // We are running a batch task for this profile so basically do nothing and return page
  if (in_array($task, array('ec-modules-batch', 'ec-configure-batch'))) {
    include_once 'includes/batch.inc';
    $output = _batch_page();
  }
  
  if($task == 'ec-configure'){
    $batch['title'] = st('Configuring @drupal', array('@drupal' => drupal_install_profile_name()));
    $batch['operations'][] = array('_essential_connections_configure', array());
    $batch['finished'] = '_essential_connections_install_finished';
    variable_set('install_task', 'ec-configure-batch');
    batch_set($batch);
    batch_process($url, $url);
    // Jut for cli installs. We'll never reach here on interactive installs.
    return;
  }
  
  /*if($task == 'ec1'){
	drupal_flush_all_caches();
	//node_access_rebuild();
	//$task = 'profile-finished';
	variable_set('install_task', 'profile-finished');
  }*/

}
function _essential_connections_configure() {

    //variable_set('site_frontpage', 'user/login');
	variable_set('theme_default', 'cti_flex');
	variable_set('preprocess_css', '1');
	variable_set('preprocess_js', '1');
	variable_set('user_picture_path', 'home/profile_pictures');

	$home_path = file_create_path('home');
	file_check_directory($home_path, 1);
	chmod($home_path,0777);
	$picture_path = file_create_path(variable_get('user_picture_path', 'home/profile_pictures'));
	file_check_directory($picture_path, 1);
	chmod($picture_path,0777);

	drupal_flush_all_caches();
    node_access_rebuild();

    if (function_exists('strongarm_init')) {
      strongarm_init();
    }

    $revert = array(
	'ec_base' => array('user_permission','variable','menu_links','menu_custom'),
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
	//'ec_filefield' => array('user_permission','variable'),
	'ec_block' => array('user_permission','variable'),
	'ec_formats_filters' => array('user_permission','variable'),
	'ec_htmlpurifier' => array('user_permission','variable'),
	'ec_imagecache' => array('user_permission','variable'),
	'ec_og' => array('user_permission','variable','content'),
	'ec_messaging_notifications' => array('user_permission','variable'),
	'ec_blog' => array('content','fieldgroup','user_permission','variable'),
	'ec_poll' => array('user_permission','variable'),
	'ec_page' => array('content','fieldgroup','user_permission','variable'),
	'ec_event' => array('content','fieldgroup','user_permission','variable'),
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
	'ec_uc' => array('user_permission','variable','menu_links'),
	'ec_frontpage' => array('menu_links'),
    ); 
    //features_revert($revert);
}
/**
 * Finished callback for the modules install batch.
 *
 */
function _essential_connections_profile_batch_finished($success, $results) {
  variable_set('install_task', 'ec-configure');
}
function _essential_connections_install_finished() {
  drupal_flush_all_caches();
  //drupal_cron_run();
  variable_set('install_task', 'profile-finished');
}
