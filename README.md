djangoappengine-script (for linux)
======================

Setup
-----

 * Copy script to a place included in $PATH, for example /usr/bin
 * Give script execution rights with "chmod +x create_gaedj.sh"
 * Mercurial needs to be installed, do it with "sudo apt-get install mercurial"
 * Have Appengine SDK installed (https://developers.google.com/appengine/downloads)

Usage
-----

 * create_gaedj.sh newproject
 * cd newproject
 * ./manage.py runserver (just to test it works)


What is does
------------

Script to set up all needed modules to get django-appengine project running.

It follows the process from : http://www.allbuttonspressed.com/projects/djangoappengine

 * It first creates new directory (your argument)
 * Then it downloads (clones) following repositories:
   * django-nonrel 
   * djangoappengine 
   * djangotoolbox 
   * django-autoload
   * django-dbindexer
   * django-testapp
 * Then it copies the needed parts from those and removes them
 * Your project is ready to run

 Everything this script does is contained within the created directory.

