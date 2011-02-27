<?php

/**
 * Implementation of hook_user_default_permissions().
 */
function ec_page_user_default_permissions() {
  $permissions = array();

  // Exported permission: create page content
  $permissions['create page content'] = array(
    'name' => 'create page content',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'manager',
    ),
  );

  // Exported permission: delete any page content
  $permissions['delete any page content'] = array(
    'name' => 'delete any page content',
    'roles' => array(
      '0' => 'administrator',
    ),
  );

  // Exported permission: delete own page content
  $permissions['delete own page content'] = array(
    'name' => 'delete own page content',
    'roles' => array(
      '0' => 'authenticated user',
    ),
  );

  // Exported permission: edit any page content
  $permissions['edit any page content'] = array(
    'name' => 'edit any page content',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'manager',
    ),
  );

  // Exported permission: edit field_file
  $permissions['edit field_file'] = array(
    'name' => 'edit field_file',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'advanced user',
      '2' => 'authenticated user',
      '3' => 'manager',
    ),
  );

  // Exported permission: edit field_geo_data
  $permissions['edit field_geo_data'] = array(
    'name' => 'edit field_geo_data',
    'roles' => array(),
  );

  // Exported permission: edit field_image
  $permissions['edit field_image'] = array(
    'name' => 'edit field_image',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'advanced user',
      '2' => 'authenticated user',
      '3' => 'manager',
    ),
  );

  // Exported permission: edit field_map
  $permissions['edit field_map'] = array(
    'name' => 'edit field_map',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'advanced user',
      '2' => 'authenticated user',
      '3' => 'manager',
    ),
  );

  // Exported permission: edit field_ol_map
  $permissions['edit field_ol_map'] = array(
    'name' => 'edit field_ol_map',
    'roles' => array(),
  );

  // Exported permission: edit field_show_auth_info
  $permissions['edit field_show_auth_info'] = array(
    'name' => 'edit field_show_auth_info',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'advanced user',
      '2' => 'authenticated user',
      '3' => 'manager',
    ),
  );

  // Exported permission: edit field_video
  $permissions['edit field_video'] = array(
    'name' => 'edit field_video',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'advanced user',
      '2' => 'authenticated user',
      '3' => 'manager',
    ),
  );

  // Exported permission: edit own page content
  $permissions['edit own page content'] = array(
    'name' => 'edit own page content',
    'roles' => array(
      '0' => 'authenticated user',
    ),
  );

  // Exported permission: view field_date
  $permissions['view field_date'] = array(
    'name' => 'view field_date',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'advanced user',
      '2' => 'anonymous user',
      '3' => 'authenticated user',
      '4' => 'manager',
    ),
  );

  // Exported permission: view field_file
  $permissions['view field_file'] = array(
    'name' => 'view field_file',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'advanced user',
      '2' => 'anonymous user',
      '3' => 'authenticated user',
      '4' => 'manager',
    ),
  );

  // Exported permission: view field_geo_data
  $permissions['view field_geo_data'] = array(
    'name' => 'view field_geo_data',
    'roles' => array(),
  );

  // Exported permission: view field_image
  $permissions['view field_image'] = array(
    'name' => 'view field_image',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'advanced user',
      '2' => 'anonymous user',
      '3' => 'authenticated user',
      '4' => 'manager',
    ),
  );

  // Exported permission: view field_map
  $permissions['view field_map'] = array(
    'name' => 'view field_map',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'advanced user',
      '2' => 'anonymous user',
      '3' => 'authenticated user',
      '4' => 'manager',
    ),
  );

  // Exported permission: view field_ol_map
  $permissions['view field_ol_map'] = array(
    'name' => 'view field_ol_map',
    'roles' => array(),
  );

  // Exported permission: view field_show_auth_info
  $permissions['view field_show_auth_info'] = array(
    'name' => 'view field_show_auth_info',
    'roles' => array(),
  );

  // Exported permission: view field_video
  $permissions['view field_video'] = array(
    'name' => 'view field_video',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'advanced user',
      '2' => 'anonymous user',
      '3' => 'authenticated user',
      '4' => 'manager',
    ),
  );

  return $permissions;
}
