<?php

/**
 * @file
 * Enables modules and site configuration for a Site Review site installation.
 */

/**
 * Implements hook_date_format_types().
 */
function to_do_list_date_format_types() {
  return array(
    'iso_8601' => t('ISO 8601'),
    'year' => t('Year'),
  );
}

/**
 * Implements hook_date_formats().
 */
function to_do_list_date_formats() {
  return array(
    array(
      'type' => 'iso_8601',
      'format' => 'Y-m-d\TH:i:sO',
      'locales' => array(),
    ),
    array(
      'type' => 'year',
      'format' => 'Y',
      'locales' => array(),
    ),
  );
}

/**
 * Preprocess the install page variables to add our logo.
 */
function to_do_list_process_maintenance_page(&$variables) {
  $variables['logo'] = drupal_get_path('profile', 'to_do_list') . '/logo.png';
}
