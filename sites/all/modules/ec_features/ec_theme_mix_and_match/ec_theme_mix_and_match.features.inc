<?php

/**
 * Implementation of hook_ctools_plugin_api().
 */
function ec_theme_mix_and_match_ctools_plugin_api() {
  list($module, $api) = func_get_args();
  if ($module == "strongarm" && $api == "strongarm") {
    return array("version" => 1);
  }
}
