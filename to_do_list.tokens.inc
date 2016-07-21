<?php

/**
 * Implements hook_token_info().
 */
function to_do_list_token_info() {

  $info['tokens']['site']['station-acronym'] = array(
    'name' => t('Station acronym'),
    'description' => '',
  );


  return $info;
}

/**
 * Implements hook_tokens().
 */
function to_do_list_tokens($type, $tokens, array $data = array(), array $options = array()) {
  $langcode = !empty($options['lanuage']) ? $options['language']->language : NULL;
  $sanitize = !empty($options['sanitize']);
  $replacements = array();

  if ($type == 'node' && !empty($data['node'])) {
    $node = $data['node'];
  }

  if ($type == 'site') {
    foreach ($tokens as $name => $original) {
      switch ($name) {
        case 'station-acronym':
          $acronym = variable_get('station_acronym', 'STATION');
          $replacements[$original] = $sanitize ? check_plain($acronym) : $acronym;
          break;
      }
    }
  }

  return $replacements;
}

