<?php
/**
 * @file
 * portfolio_demo.features.menu_links.inc
 */

/**
 * Implements hook_menu_default_menu_links().
 */
function portfolio_demo_menu_default_menu_links() {
  $menu_links = array();

  // Exported menu link: main-menu_platform:http:/platform
  $menu_links['main-menu_platform:http:/platform'] = array(
    'menu_name' => 'main-menu',
    'link_path' => 'http:/platform',
    'router_path' => '',
    'link_title' => 'Platform',
    'options' => array(
      'attributes' => array(
        'title' => '',
      ),
      'identifier' => 'main-menu_platform:http:/platform',
    ),
    'module' => 'menu',
    'hidden' => 0,
    'external' => 1,
    'has_children' => 0,
    'expanded' => 0,
    'weight' => 0,
    'customized' => 1,
  );

  // Translatables
  // Included for use with string extractors like potx.
  t('Platform');

  return $menu_links;
}
