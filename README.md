djangoappengine-script (for linux)
======================

Setup
-----

 * Copy script to a place included in $PATH, for example /usr/bin
 * Mercurial needs to be installed, do it with "sudo apt-get install mercurial"

Usage
-----

 * create_gaedj.sh newproject

 The created project will be under newly created folder newproject. You can go there and run "./manage.py runserver".


What is does
------------

Script to set up all needed modules to get django-appengine project running.

It follows the process from : http://www.allbuttonspressed.com/projects/djangoappengine

 * It first creates new directory (your argument)
 * Then itDownloads following repositories:
   * django-nonrel 
   * djangoappengine 
   * djangotoolbox 
   * django-autoload
   * django-dbindexer
   * django-testapp
 * Then it copies the needed parts from those and removes them
 * Your project is ready to run

 Everything this script does is contained within the created directory.

