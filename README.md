# To-Do List Drupal-7 Install Profile #

## Summary ##

There are many ways and better ways to create your to-do list.  This is based on Drupal 7, a small profile for a no-frills to-do list accessible from anywhere.  You probably want to use a JS framework or a list integrated in your Alphabet, or other.  However, if you want to use this one, feel free to do so.  It is inspired on the to-do project that went unsupported in Drupal-6.  There are other light weight project management tools in D7.  Did you get yet that I am not selling you this?

## Requirements ##

* [Base Drupal 7 requirements](http://drupal.org/requirements)
* PHP 5.5+ (possibly 5.3.8+, but more modern better)
* [Drush](http://drush.ws/)
* [Git](http://git-scm.com/)

## Instructions ##

The following instructions assume that you clone this profile into a directory
'above' your web server root. The web server root directory in these examples
is _www_.

### Installing ###

Installing the profile involves 4 steps.

1.  Clone the profile.
2.  Build the profile into your web root, or symlink.
3.  Create a database for your site to connect to.
4.  Navigate to your site in your web browser to complete the install process.

For the example commands below, 'www' represents the complete path to your site's desired webroot.

Clone the repo:

* `git clone --branch 7.x-1.x git@github.com:isangil/to-do-list.git`

Build the site into your webroot (or symlink):

* `cd to-do-list`
* `drush make build-to_do_list.make www --prepare-install --contrib-destination=profiles/deims`
If you choose to build outside webroot, symlink with something like this 
* 'sudo ln -s ~/mydir/to-do-list/www /var/www/html/todo'

### Create a database ###

Use your fav GUI to create a new database. In this case, I will exemplify with the shell mysql client, for a database named 'todo'

1. Init the database client

`mysql -h host -u user -p youruserpassword`
`Enter password: ********`

2. Create the database
`mysql> CREATE DATABASE todo; `

3. Grant privs to the mysql user that drupal uses to connect, let us call it 'duser'.
`mysql> GRANT ALL PRIVILEGES ON todo.* TO 'duser'@'localhost';`

4. Activate changes
`mysql> FLUSH PRIVILEGES`

### Install the profile ###
Visit your new URL, and follow the wizard steps, you may have to create a 'files' directory, make your webserver the owner of such folders and do something about the settings.php file, create it and/or enable write permissions during the install and initial config.

The profile modifies the "article" content type by naming it tasks. It adds a view (lists of tasks) that are filterable / sortable by status, etc. Simple, but effective.



