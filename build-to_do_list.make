api = 2
core = 7.x

; Include building core
includes[] = "drupal-org-core.make"

; Download Site Review install profile.
projects[to_do_list][type] = profile
projects[to_do_list][download][type] = "git"
projects[to_do_list][download][url] = "git@github.com:isangil/to-do-list.git"
projects[to_do_list][download][branch] = "7.x-1.x"
projects[to_do_list][subdir] = ""
