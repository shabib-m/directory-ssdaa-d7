<?php
/**
 * @file
 * Enables modules and site configuration for a Directory ssdaa site installation.
 */

/**
 * Implements hook_form_FORM_ID_alter() for install_configure_form().
 *
 * Allows the profile to alter the site configuration form.
 */
function directory_ssdaa_form_install_configure_form_alter(&$form, $form_state) {
  // Pre-populate the site name with the server name.
  $form['site_information']['site_name']['#default_value'] = st('Ясэс еЯь ссуцЧок');

    // Hide Server Settings.
  $form['server_settings']['#access'] = FALSE;

  // Hide Update Notifications.
  $form['update_notifications']['#access'] = FALSE;
  
}
