<?php

/**
 * Implementation of hook_strongarm().
 */
function ec_feeds_strongarm() {
  $export = array();
  $strongarm = new stdClass;
  $strongarm->disabled = FALSE; /* Edit this to true to make a default strongarm disabled initially */
  $strongarm->api_version = 1;
  $strongarm->name = 'page_title_type_feed_showfield';
  $strongarm->value = 1;

  $export['page_title_type_feed_showfield'] = $strongarm;
  
  return $export;
}
