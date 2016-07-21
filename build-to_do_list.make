api = 2
core = 7.x

; Include building core
includes[] = "drupal-org-core.make"

; Download Site Review install profile.
projects[site_review][type] = profile
projects[site_review][download][type] = "git"
projects[site_review][download][url] = "git@github.com:isangil/to-do-list.git"
projects[site_review][download][branch] = "7.x-1.x"
projects[site_review][subdir] = ""
