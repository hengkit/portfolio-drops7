<?php
function portfolio_install_tasks($install_state) {
  $tasks = array (
    'portfolio_configure' => array(),
  );
  return $tasks;
}

/**
 * Set up base config
 */
function portfolio_configure() {
  // Set default portfolio variables
  variable_set('cache', 1);
  variable_set('block_cache', 1);
  variable_set('cache_lifetime', '0');
  variable_set('page_cache_maximum_age', '900');
  variable_set('page_compression', 0);
  variable_set('preprocess_css', 0);
  variable_set('preprocess_js', 1);
  $search_active_modules = array(
    'apachesolr_search' => 'apachesolr_search',
    'user' => 'user',
    'node' => 0
  );
  variable_set('search_active_modules', $search_active_modules);
  variable_set('search_default_module', 'apachesolr_search');
  drupal_set_message(t('Portfolio defaults configured.'));
  $theme = 'hatch';
  theme_enable(array($theme));
  variable_set('theme_default', $theme);
  system_rebuild_theme_data();
  drupal_theme_rebuild();
}
