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
	//'ec_filefield_post_install',
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


  $result = db_query("CREATE TABLE IF NOT EXISTS {filefield_paths} (
  type varchar(32) NOT NULL default '',
  field varchar(32) NOT NULL default '',
  filename mediumtext NOT NULL,
  filepath mediumtext NOT NULL,
  UNIQUE KEY type_field (type,field)
  ) ENGINE=MyISAM DEFAULT CHARSET=utf8;");
  $result = db_query("REPLACE INTO {filefield_paths} (type, field, filename, filepath) VALUES
('page', 'field_file', 'a:4:{s:5:\"value\";s:60:\"[filefield-onlyname-original].[filefield-extension-original]\";s:7:\"tolower\";i:0;s:8:\"pathauto\";i:0;s:13:\"transliterate\";i:1;}', 'a:4:{s:5:\"value\";s:18:\"home/user[user-id]\";s:7:\"tolower\";i:0;s:8:\"pathauto\";i:0;s:13:\"transliterate\";i:0;}'),
('page', 'field_image', 'a:4:{s:5:\"value\";s:60:\"[filefield-onlyname-original].[filefield-extension-original]\";s:7:\"tolower\";i:0;s:8:\"pathauto\";i:0;s:13:\"transliterate\";i:1;}', 'a:4:{s:5:\"value\";s:18:\"home/user[user-id]\";s:7:\"tolower\";i:0;s:8:\"pathauto\";i:0;s:13:\"transliterate\";i:0;}'),
('page', 'field_video', 'a:4:{s:5:\"value\";s:60:\"[filefield-onlyname-original].[filefield-extension-original]\";s:7:\"tolower\";i:0;s:8:\"pathauto\";i:0;s:13:\"transliterate\";i:1;}', 'a:4:{s:5:\"value\";s:18:\"home/user[user-id]\";s:7:\"tolower\";i:0;s:8:\"pathauto\";i:0;s:13:\"transliterate\";i:0;}'),
('event', 'field_file', 'a:4:{s:5:\"value\";s:60:\"[filefield-onlyname-original].[filefield-extension-original]\";s:7:\"tolower\";i:0;s:8:\"pathauto\";i:0;s:13:\"transliterate\";i:1;}', 'a:4:{s:5:\"value\";s:18:\"home/user[user-id]\";s:7:\"tolower\";i:0;s:8:\"pathauto\";i:0;s:13:\"transliterate\";i:0;}'),
('event', 'field_image', 'a:4:{s:5:\"value\";s:60:\"[filefield-onlyname-original].[filefield-extension-original]\";s:7:\"tolower\";i:0;s:8:\"pathauto\";i:0;s:13:\"transliterate\";i:1;}', 'a:4:{s:5:\"value\";s:18:\"home/user[user-id]\";s:7:\"tolower\";i:0;s:8:\"pathauto\";i:0;s:13:\"transliterate\";i:0;}'),
('event', 'field_video', 'a:4:{s:5:\"value\";s:60:\"[filefield-onlyname-original].[filefield-extension-original]\";s:7:\"tolower\";i:0;s:8:\"pathauto\";i:0;s:13:\"transliterate\";i:1;}', 'a:4:{s:5:\"value\";s:18:\"home/user[user-id]\";s:7:\"tolower\";i:0;s:8:\"pathauto\";i:0;s:13:\"transliterate\";i:0;}'),
('blog', 'field_file', 'a:4:{s:5:\"value\";s:60:\"[filefield-onlyname-original].[filefield-extension-original]\";s:7:\"tolower\";i:0;s:8:\"pathauto\";i:0;s:13:\"transliterate\";i:1;}', 'a:4:{s:5:\"value\";s:18:\"home/user[user-id]\";s:7:\"tolower\";i:0;s:8:\"pathauto\";i:0;s:13:\"transliterate\";i:0;}'),
('blog', 'field_image', 'a:4:{s:5:\"value\";s:60:\"[filefield-onlyname-original].[filefield-extension-original]\";s:7:\"tolower\";i:0;s:8:\"pathauto\";i:0;s:13:\"transliterate\";i:1;}', 'a:4:{s:5:\"value\";s:18:\"home/user[user-id]\";s:7:\"tolower\";i:0;s:8:\"pathauto\";i:0;s:13:\"transliterate\";i:0;}'),
('blog', 'field_video', 'a:4:{s:5:\"value\";s:60:\"[filefield-onlyname-original].[filefield-extension-original]\";s:7:\"tolower\";i:0;s:8:\"pathauto\";i:0;s:13:\"transliterate\";i:1;}', 'a:4:{s:5:\"value\";s:18:\"home/user[user-id]\";s:7:\"tolower\";i:0;s:8:\"pathauto\";i:0;s:13:\"transliterate\";i:0;}');");
	
	$result = db_query("REPLACE INTO {filters} (fid, format, module, delta, weight) VALUES
	(15, 1, 'filter', 3, 10),
	(14, 1, 'htmlpurifier', 0, 10),
	(10, 2, 'htmlpurifier', 0, 10),
	(8, 3, 'php', 0, 0),
	(9, 4, 'messaging', 1, 0),
	(11, 2, 'filter', 3, 10),
	(12, 2, 'filter', 1, 1),
	(13, 2, 'filter', 2, 0),
	(16, 1, 'filter', 0, 1),
	(17, 1, 'filter', 1, 2),
	(18, 1, 'filter', 2, 0);
	");
	
	$result = db_query("REPLACE INTO {better_formats_defaults} (rid, type, format, type_weight, weight) VALUES
	(1, 'node', 1, 1, 0),
	(1, 'comment', 1, 1, 0),
	(1, 'block', 0, 1, 25),
	(2, 'node', 0, 1, 0),
	(2, 'comment', 0, 1, 0),
	(2, 'block', 0, 1, 25),
	(5, 'node', 0, 1, 0),
	(5, 'comment', 0, 1, 0),
	(5, 'block', 0, 1, 25),
	(3, 'node', 0, 1, 0),
	(3, 'comment', 0, 1, 0),
	(3, 'block', 0, 1, 25),
	(4, 'node', 0, 1, 0),
	(4, 'comment', 0, 1, 0),
	(4, 'block', 0, 1, 25),
	(6, 'node', 0, 1, 25),
	(6, 'comment', 0, 1, 25),
	(6, 'block', 0, 1, 25);
	");
	
	
  $result = db_query('REPLACE INTO {ckeditor_settings} (name, settings) VALUES
(\'CKEditor Global Profile\', \'a:7:{s:9:"excl_mode";i:0;s:4:"excl";s:621:"admin/user/settings.edit-user-mail-*\n*.edit-pages\n*.edit-pathauto-ignore-words\n*.edit-recipients\n*.edit-reply\n*.edit-description\n*.edit-synonyms\n*.edit-img-assist-textareas\n*.edit-img-assist-paths\n*.edit-nodewords-description\n*.edit-nodewords-description-value\nadmin/content/nodewords/global*\n*.edit-relatedlinks-fieldset-relatedlinks\n*.edit-allowed-values-php\n*.edit-allowed-values\n*.edit-update-notify-emails\n*.edit-googleanalytics-*\n*.edit-piwik-*\n*.edit-feedburner-useragents\n*@*.edit-webform-*\nwebform@*.edit-extra-items\nadmin/*/logintoboggan\nadmin/settings/actions/configure/*\n*.edit-target\n*.edit-wysiwyg-filter-*\n";s:16:"simple_incl_mode";i:1;s:11:"simple_incl";s:163:"*.edit-signature\nadmin/settings/site-information.*\nadmin/settings/site-maintenance.*\n*.edit-page-help\n*.edit-user-registration-help\n*.edit-user-picture-guidelines\n";s:13:"ckeditor_path";s:11:"%m/ckeditor";s:10:"excl_regex";s:905:"#(?:^.*@admin/user/settings\\.edit-user-mail-.*$)|(?:^.*@.*\\.edit-pages$)|(?:^.*@.*\\.edit-pathauto-ignore-words$)|(?:^.*@.*\\.edit-recipients$)|(?:^.*@.*\\.edit-reply$)|(?:^.*@.*\\.edit-description$)|(?:^.*@.*\\.edit-synonyms$)|(?:^.*@.*\\.edit-img-assist-textareas$)|(?:^.*@.*\\.edit-img-assist-paths$)|(?:^.*@.*\\.edit-nodewords-description$)|(?:^.*@.*\\.edit-nodewords-description-value$)|(?:^.*@admin/content/nodewords/global.*\\..*$)|(?:^.*@.*\\.edit-relatedlinks-fieldset-relatedlinks$)|(?:^.*@.*\\.edit-allowed-values-php$)|(?:^.*@.*\\.edit-allowed-values$)|(?:^.*@.*\\.edit-update-notify-emails$)|(?:^.*@.*\\.edit-googleanalytics-.*$)|(?:^.*@.*\\.edit-piwik-.*$)|(?:^.*@.*\\.edit-feedburner-useragents$)|(?:^.*@.*\\.edit-webform-.*$)|(?:^webform@.*\\.edit-extra-items$)|(?:^.*@admin/.*/logintoboggan\\..*$)|(?:^.*@admin/settings/actions/configure/.*\\..*$)|(?:^.*@.*\\.edit-target$)|(?:^.*@.*\\.edit-wysiwyg-filter-.*$)#";s:17:"simple_incl_regex";s:230:"#(?:^.*@.*\\.edit-signature$)|(?:^.*@admin/settings/site-information\\..*$)|(?:^.*@admin/settings/site-maintenance\\..*$)|(?:^.*@.*\\.edit-page-help$)|(?:^.*@.*\\.edit-user-registration-help$)|(?:^.*@.*\\.edit-user-picture-guidelines$)#";}\'),
(\'Default\', \'a:42:{s:15:"allow_user_conf";s:1:"f";s:7:"filters";a:7:{s:14:"htmlpurifier/0";i:1;s:14:"htmlpurifier/1";i:0;s:8:"filter/3";i:1;s:8:"filter/0";i:1;s:11:"messaging/1";i:0;s:11:"messaging/0";i:0;s:10:"swftools/0";i:0;}s:2:"ss";s:1:"2";s:8:"min_rows";s:1:"1";s:9:"excl_mode";s:1:"0";s:4:"excl";s:0:"";s:11:"simple_incl";s:0:"";s:7:"default";s:1:"t";s:11:"show_toggle";s:1:"t";s:5:"popup";s:1:"f";s:4:"skin";s:4:"kama";s:7:"uicolor";s:7:"default";s:16:"uicolor_textarea";s:95:"<p>\r\n	Click on the <strong>UI Color Picker</strong> button to set your color preferences.</p>\r\n";s:12:"uicolor_user";s:7:"default";s:7:"toolbar";s:11:"DrupalBasic";s:6:"expand";s:1:"t";s:5:"width";s:4:"100%";s:4:"lang";s:2:"en";s:9:"auto_lang";s:1:"t";s:18:"language_direction";s:7:"default";s:10:"enter_mode";s:1:"p";s:16:"shift_enter_mode";s:2:"br";s:11:"font_format";s:35:"p;div;pre;address;h1;h2;h3;h4;h5;h6";s:17:"custom_formatting";s:1:"f";s:10:"formatting";a:1:{s:25:"custom_formatting_options";a:6:{s:6:"indent";s:6:"indent";s:15:"breakBeforeOpen";s:15:"breakBeforeOpen";s:14:"breakAfterOpen";s:14:"breakAfterOpen";s:15:"breakAfterClose";s:15:"breakAfterClose";s:16:"breakBeforeClose";i:0;s:10:"pre_indent";i:0;}}s:8:"css_mode";s:5:"theme";s:8:"css_path";s:0:"";s:9:"css_style";s:5:"theme";s:11:"styles_path";s:0:"";s:11:"filebrowser";s:4:"none";s:17:"filebrowser_image";s:0:"";s:17:"filebrowser_flash";s:0:"";s:13:"UserFilesPath";s:5:"%b%f/";s:21:"UserFilesAbsolutePath";s:7:"%d%b%f/";s:20:"ckeditor_load_method";s:11:"ckeditor.js";s:22:"ckeditor_load_time_out";s:1:"0";s:21:"forcePasteAsPlainText";s:1:"f";s:17:"scayt_autoStartup";s:1:"f";s:15:"theme_config_js";s:1:"f";s:7:"js_conf";s:0:"";s:10:"excl_regex";s:0:"";s:17:"simple_incl_regex";s:0:"";}\'),
(\'Advanced\', \'a:42:{s:15:"allow_user_conf";s:1:"f";s:7:"filters";a:7:{s:14:"htmlpurifier/0";i:1;s:14:"htmlpurifier/1";i:0;s:8:"filter/3";i:1;s:8:"filter/0";i:0;s:11:"messaging/1";i:0;s:11:"messaging/0";i:0;s:10:"swftools/0";i:0;}s:2:"ss";s:1:"2";s:8:"min_rows";s:1:"1";s:9:"excl_mode";s:1:"0";s:4:"excl";s:0:"";s:11:"simple_incl";s:0:"";s:7:"default";s:1:"t";s:11:"show_toggle";s:1:"t";s:5:"popup";s:1:"f";s:4:"skin";s:4:"kama";s:7:"uicolor";s:7:"default";s:16:"uicolor_textarea";s:95:"<p>\r\n	Click on the <strong>UI Color Picker</strong> button to set your color preferences.</p>\r\n";s:12:"uicolor_user";s:7:"default";s:7:"toolbar";s:10:"DrupalFull";s:6:"expand";s:1:"t";s:5:"width";s:4:"100%";s:4:"lang";s:2:"en";s:9:"auto_lang";s:1:"t";s:18:"language_direction";s:7:"default";s:10:"enter_mode";s:1:"p";s:16:"shift_enter_mode";s:2:"br";s:11:"font_format";s:35:"p;div;pre;address;h1;h2;h3;h4;h5;h6";s:17:"custom_formatting";s:1:"f";s:10:"formatting";a:1:{s:25:"custom_formatting_options";a:6:{s:6:"indent";s:6:"indent";s:15:"breakBeforeOpen";s:15:"breakBeforeOpen";s:14:"breakAfterOpen";s:14:"breakAfterOpen";s:15:"breakAfterClose";s:15:"breakAfterClose";s:16:"breakBeforeClose";i:0;s:10:"pre_indent";i:0;}}s:8:"css_mode";s:5:"theme";s:8:"css_path";s:0:"";s:9:"css_style";s:5:"theme";s:11:"styles_path";s:0:"";s:11:"filebrowser";s:4:"imce";s:17:"filebrowser_image";s:0:"";s:17:"filebrowser_flash";s:0:"";s:13:"UserFilesPath";s:5:"%b%f/";s:21:"UserFilesAbsolutePath";s:7:"%d%b%f/";s:20:"ckeditor_load_method";s:11:"ckeditor.js";s:22:"ckeditor_load_time_out";s:1:"0";s:21:"forcePasteAsPlainText";s:1:"f";s:17:"scayt_autoStartup";s:1:"f";s:15:"theme_config_js";s:1:"f";s:7:"js_conf";s:0:"";s:10:"excl_regex";s:0:"";s:17:"simple_incl_regex";s:0:"";}\');
');
	
	
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
