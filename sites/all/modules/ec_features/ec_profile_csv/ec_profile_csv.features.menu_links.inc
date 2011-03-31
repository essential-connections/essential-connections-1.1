<?php

/**
 * Implementation of hook_menu_default_menu_links().
 */
function ec_profile_csv_menu_default_menu_links() {
  $menu_links = array();

  // Exported menu link: navigation:admin/settings/profile_csv
  $menu_links['navigation:admin/settings/profile_csv'] = array(
    'menu_name' => 'navigation',
    'link_path' => 'admin/settings/profile_csv',
    'router_path' => 'admin/settings/profile_csv',
    'link_title' => 'Profile CSV Settings',
    'options' => array(
      'attributes' => array(
        'title' => 'Profile CSV user data selection',
      ),
    ),
    'module' => 'system',
    'hidden' => '0',
    'external' => '0',
    'has_children' => '0',
    'expanded' => '0',
    'weight' => '-45',
    'parent_path' => 'admin/user',
  );
  // Exported menu link: navigation:profile_csv
  $menu_links['navigation:profile_csv'] = array(
    'menu_name' => 'navigation',
    'link_path' => 'profile_csv',
    'router_path' => 'profile_csv',
    'link_title' => 'Profile CSV Export',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
    ),
    'module' => 'system',
    'hidden' => '0',
    'external' => '0',
    'has_children' => '0',
    'expanded' => '0',
    'weight' => '-44',
    'parent_path' => 'admin/user',
  );
  // Translatables
  // Included for use with string extractors like potx.
  t('Profile CSV Export');
  t('Profile CSV Settings');


  return $menu_links;
}
