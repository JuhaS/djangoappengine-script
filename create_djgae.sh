#!/bin/bash
arg="$1"
if [ ! $arg ]
then
    echo "Usage: $0 projname"
    exit 1
fi

directory="$1"
# bash check if directory exists
if [ -r $directory ]; then
	echo "Directory already exists, give unexisting name."
    exit 1
fi 

mkdir $1
cd $1
hg clone https://bitbucket.org/wkornewald/django-nonrel
if [ $? -gt 0 ]; then
    echo "Problem downloading django-nonrel"
    exit
fi
hg clone https://bitbucket.org/wkornewald/djangoappengine
if [ $? -gt 0 ]; then
    echo "Problem downloading djangoappengine"
fi
hg clone https://bitbucket.org/wkornewald/djangotoolbox
if [ $? -gt 0 ]; then
    echo "Problem downloading djangotoolbox"
fi
hg clone https://bitbucket.org/twanschik/django-autoload
if [ $? -gt 0 ]; then
    echo "Problem downloading django-autoload"
fi
hg clone https://bitbucket.org/wkornewald/django-dbindexer
if [ $? -gt 0 ]; then
    echo "Problem downloading django-dbindexer"
fi
hg clone https://bitbucket.org/wkornewald/django-testapp
if [ $? -gt 0 ]; then
    echo "Problem downloading django-testapp"
fi
cp -r django-nonrel/django .
mv djangotoolbox djangotoolbox_dir
cp -r djangotoolbox_dir/djangotoolbox .
cp -r  django-autoload/autoload .
cp -r  django-dbindexer/dbindexer .
cp -r  django-testapp/* .
rm -rf django-nonrel
rm -rf djangotoolbox_dir
rm -rf django-autoload
rm -rf django-dbindexer
rm -rf django-testapp

