<?php

/**
 * Implementation of hook_user_default_permissions().
 */
function ec_user_user_default_permissions() {
  $permissions = array();

  // Exported permission: access user profiles
  $permissions['access user profiles'] = array(
    'name' => 'access user profiles',
    'roles' => array(
      '0' => 'authenticated user',
    ),
  );

  // Exported permission: administer Persistent Login
  $permissions['administer Persistent Login'] = array(
    'name' => 'administer Persistent Login',
    'roles' => array(),
  );

  // Exported permission: administer permissions
  $permissions['administer permissions'] = array(
    'name' => 'administer permissions',
    'roles' => array(
      '0' => 'administrator',
    ),
  );

  // Exported permission: administer users
  $permissions['administer users'] = array(
    'name' => 'administer users',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'manager',
    ),
  );

  // Exported permission: assign user roles
  $permissions['assign user roles'] = array(
    'name' => 'assign user roles',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'manager',
    ),
  );

  // Exported permission: block users
  $permissions['block users'] = array(
    'name' => 'block users',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'manager',
    ),
  );

  // Exported permission: change own username
  $permissions['change own username'] = array(
    'name' => 'change own username',
    'roles' => array(
      '0' => 'authenticated user',
    ),
  );

  // Exported permission: create users
  $permissions['create users'] = array(
    'name' => 'create users',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'manager',
    ),
  );

  // Exported permission: delete own account
  $permissions['delete own account'] = array(
    'name' => 'delete own account',
    'roles' => array(),
  );

  // Exported permission: search user profiles
  $permissions['search user profiles'] = array(
    'name' => 'search user profiles',
    'roles' => array(
      '0' => 'authenticated user',
    ),
  );

  return $permissions;
}
