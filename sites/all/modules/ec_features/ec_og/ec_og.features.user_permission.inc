<?php

/**
 * Implementation of hook_user_default_permissions().
 */
function ec_og_user_default_permissions() {
  $permissions = array();

  // Exported permission: administer organic groups
  $permissions['administer organic groups'] = array(
    'name' => 'administer organic groups',
    'roles' => array(
      '0' => 'administrator',
    ),
  );

  // Exported permission: manage OG panels pages
  $permissions['manage OG panels pages'] = array(
    'name' => 'manage OG panels pages',
    'roles' => array(),
  );

  // Exported permission: subscribe to content in groups
  $permissions['subscribe to content in groups'] = array(
    'name' => 'subscribe to content in groups',
    'roles' => array(
      '0' => 'authenticated user',
    ),
  );

  return $permissions;
}
