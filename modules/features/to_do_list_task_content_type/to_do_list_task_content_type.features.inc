<?php
/**
 * @file
 * to_do_list_task_content_type.features.inc
 */

/**
 * Implements hook_node_info().
 */
function to_do_list_task_content_type_node_info() {
  $items = array(
    'article' => array(
      'name' => t('Tasks'),
      'base' => 'node_content',
      'description' => t('Use <em>articles</em> for time-sensitive content like news, press releases or blog posts.'),
      'has_title' => '1',
      'title_label' => t('Task'),
      'help' => '',
    ),
  );
  drupal_alter('node_info', $items);
  return $items;
}
