<?php

/**
 * Implementation of hook_user_default_permissions().
 */
function ec_blog_user_default_permissions() {
  $permissions = array();

  // Exported permission: administer content with blog api
  $permissions['administer content with blog api'] = array(
    'name' => 'administer content with blog api',
    'roles' => array(),
  );

  // Exported permission: create blog entries
  $permissions['create blog entries'] = array(
    'name' => 'create blog entries',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'advanced user',
      '2' => 'manager',
    ),
  );

  // Exported permission: delete any blog entry
  $permissions['delete any blog entry'] = array(
    'name' => 'delete any blog entry',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'manager',
    ),
  );

  // Exported permission: delete own blog entries
  $permissions['delete own blog entries'] = array(
    'name' => 'delete own blog entries',
    'roles' => array(
      '0' => 'authenticated user',
    ),
  );

  // Exported permission: edit any blog entry
  $permissions['edit any blog entry'] = array(
    'name' => 'edit any blog entry',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'manager',
    ),
  );

  // Exported permission: edit field_date
  $permissions['edit field_date'] = array(
    'name' => 'edit field_date',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'advanced user',
      '2' => 'authenticated user',
      '3' => 'manager',
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

  // Exported permission: edit own blog entries
  $permissions['edit own blog entries'] = array(
    'name' => 'edit own blog entries',
    'roles' => array(
      '0' => 'authenticated user',
    ),
  );

  // Exported permission: use PHP for block visibility
  $permissions['use PHP for block visibility'] = array(
    'name' => 'use PHP for block visibility',
    'roles' => array(),
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

  // Exported permission: view imagecache full
  $permissions['view imagecache full'] = array(
    'name' => 'view imagecache full',
    'roles' => array(
      '0' => 'anonymous user',
      '1' => 'authenticated user',
    ),
  );

  // Exported permission: view imagecache large
  $permissions['view imagecache large'] = array(
    'name' => 'view imagecache large',
    'roles' => array(
      '0' => 'anonymous user',
      '1' => 'authenticated user',
    ),
  );

  // Exported permission: view imagecache medium
  $permissions['view imagecache medium'] = array(
    'name' => 'view imagecache medium',
    'roles' => array(
      '0' => 'anonymous user',
      '1' => 'authenticated user',
    ),
  );

  // Exported permission: view imagecache original
  $permissions['view imagecache original'] = array(
    'name' => 'view imagecache original',
    'roles' => array(
      '0' => 'anonymous user',
      '1' => 'authenticated user',
    ),
  );

  // Exported permission: view imagecache small
  $permissions['view imagecache small'] = array(
    'name' => 'view imagecache small',
    'roles' => array(
      '0' => 'anonymous user',
      '1' => 'authenticated user',
    ),
  );

  // Exported permission: view imagecache thumb
  $permissions['view imagecache thumb'] = array(
    'name' => 'view imagecache thumb',
    'roles' => array(
      '0' => 'anonymous user',
      '1' => 'authenticated user',
    ),
  );

  return $permissions;
}
