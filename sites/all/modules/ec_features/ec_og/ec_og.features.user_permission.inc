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

  // Exported permission: broadcast
  $permissions['broadcast'] = array(
    'name' => 'broadcast',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'manager',
    ),
  );

  // Exported permission: manage OG panels pages
  $permissions['manage OG panels pages'] = array(
    'name' => 'manage OG panels pages',
    'roles' => array(),
  );

  // Exported permission: manage groups
  $permissions['manage groups'] = array(
    'name' => 'manage groups',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'manager',
    ),
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
