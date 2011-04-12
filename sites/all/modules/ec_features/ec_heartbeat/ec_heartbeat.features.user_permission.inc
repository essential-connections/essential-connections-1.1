<?php

/**
 * Implementation of hook_user_default_permissions().
 */
function ec_heartbeat_user_default_permissions() {
  $permissions = array();

  // Exported permission: add heartbeat comment
  $permissions['add heartbeat comment'] = array(
    'name' => 'add heartbeat comment',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'manager',
    ),
  );

  // Exported permission: administer heartbeat comments
  $permissions['administer heartbeat comments'] = array(
    'name' => 'administer heartbeat comments',
    'roles' => array(
      '0' => 'administrator',
    ),
  );

  // Exported permission: configure heartbeat
  $permissions['configure heartbeat'] = array(
    'name' => 'configure heartbeat',
    'roles' => array(),
  );

  // Exported permission: configure heartbeat messages
  $permissions['configure heartbeat messages'] = array(
    'name' => 'configure heartbeat messages',
    'roles' => array(),
  );

  // Exported permission: delete any comment
  $permissions['delete any comment'] = array(
    'name' => 'delete any comment',
    'roles' => array(
      '0' => 'administrator',
    ),
  );

  // Exported permission: delete heartbeat activity logs
  $permissions['delete heartbeat activity logs'] = array(
    'name' => 'delete heartbeat activity logs',
    'roles' => array(
      '0' => 'administrator',
    ),
  );

  // Exported permission: delete own comments
  $permissions['delete own comments'] = array(
    'name' => 'delete own comments',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'manager',
    ),
  );

  // Exported permission: delete own heartbeat activity logs
  $permissions['delete own heartbeat activity logs'] = array(
    'name' => 'delete own heartbeat activity logs',
    'roles' => array(
      '0' => 'administrator',
    ),
  );

  // Exported permission: maintain own activity
  $permissions['maintain own activity'] = array(
    'name' => 'maintain own activity',
    'roles' => array(
      '0' => 'administrator',
    ),
  );

  // Exported permission: view heartbeat messages
  $permissions['view heartbeat messages'] = array(
    'name' => 'view heartbeat messages',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'manager',
    ),
  );

  // Exported permission: view personal heartbeat activity
  $permissions['view personal heartbeat activity'] = array(
    'name' => 'view personal heartbeat activity',
    'roles' => array(
      '0' => 'administrator',
      '1' => 'manager',
    ),
  );

  return $permissions;
}
