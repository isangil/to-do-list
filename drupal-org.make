api = "2"
core = "7.x"

; -----------------------------------------------------------------------------
; Contributed modules
; -----------------------------------------------------------------------------

projects[admin_menu][version] = "3.0-rc5"
projects[admin_menu][subdir] = "contrib"

projects[admin_menu_toolbar][version] = "3.0-rc5"
projects[admin_menu_toolbar][subdir] = "contrib"

projects[ctools][version] = "1.9"
projects[ctools][subdir] = "contrib"

projects[features][version] = "2.10"
projects[features][subdir] = "contrib"

projects[field_permissions][version] = "1.0-beta2"
projects[field_permissions][subdir] = "contrib"

; Dave Reid maintains this, ok to use dev for now.
projects[file_entity][version] = "2.x-dev"
projects[file_entity][subdir] = "contrib"

projects[filefield_sources][version] = "1.8"
projects[filefield_sources][subdir] = "contrib"
; Ensure files that already exist in the files directory are left alone.
; @see https://drupal.org/node/1492374
projects[filefield_sources][patch][] = "http://drupal.org/files/1492374-ffs-attach-file-same-path.patch"
; Only show files with relevant extensions in the attach select list.
; @see https://drupal.org/node/2006436
projects[filefield_sources][patch][] = "http://drupal.org/files/2006436-file-attach-extension-filter.patch"
; Show the actual attach upload path using drupal_realpath()
; @see https://drupal.org/node/2033269
projects[filefield_sources][patch][] = "http://drupal.org/files/2033269-attach-realpath.patch"

projects[helper][version] = "1.5"
projects[helper][subdir] = "contrib"

projects[libraries][version] = "2.4"
projects[libraries][subdir] = "contrib"

projects[menu_block][version] = "2.3"
projects[menu_block][subdir] = "contrib"

projects[module_filter][version] = "2.0"
projects[module_filter][subdir] = "contrib"

projects[pathauto][version] = "1.2"
projects[pathauto][subdir] = "contrib"

projects[pathauto_persist][version] = "1.3"
projects[pathauto_persist][subdir] = "contrib"

projects[print][version] = "2.x-dev"
projects[print][subdir] = "contrib"

projects[rules][version] = "2.3"
projects[rules][subdir] = "contrib"

projects[strongarm][version] = "2.0"
projects[strongarm][subdir] = "contrib"

projects[superfish][version] = "2.0"
projects[superfish][subdir] = "contrib"

projects[taxonomy_csv][version] = "5.10"
projects[taxonomy_csv][subdir] = "contrib"

projects[views][version] = "3.13"
projects[views][subdir] = "contrib"

projects[views_content_cache][version] = "3.0-alpha3"
projects[views_content_cache][subdir] = "contrib"

projects[wysiwyg][version] = "2.x-dev"
projects[wysiwyg][subdir] = "contrib"

; -----------------------------------------------------------------------------
; Contributed themes
; -----------------------------------------------------------------------------

projects[adaptivetheme][version] = "3.2"
projects[adaptivetheme][subdir] = "contrib"

projects[pixture_reloaded][version] = "3.0"
projects[pixture_reloaded][subdir] = "contrib"

projects[shiny][version] = "1.7"
projects[shiny][subdir] = "contrib"

; -----------------------------------------------------------------------------
; Libraries
; -----------------------------------------------------------------------------

libraries[ckeditor][download][type]= "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.6.6.1/ckeditor_3.6.6.1.zip"
libraries[ckeditor][directory_name] = "ckeditor"

libraries[superfish][download][type] = "get"
libraries[superfish][download][url] = "https://github.com/mehrpadin/Superfish-for-Drupal/archive/1.x.zip"
libraries[superfish][download][subtree] = "Superfish-for-Drupal-1.x"
libraries[superfish][directory_name] = "superfish"
