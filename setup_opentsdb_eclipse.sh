#!/bin/bash
#
# Setup script for OpenTSDB on Eclipse. Captures most of the steps from:
# http://opentsdb.net/docs/build/html/development/development.html

GIT_REPO=/home/$USER/src/opentsdb
WORKSPACE=/home/$USER/opentsdb_dev
PROJECT=opentsdb

for helpdir in src/net src/tsd test/net; do
  mkdir -p $WORKSPACE/$PROJECT/$helpdir;
done

ln -s $GIT_REPO/src $WORKSPACE/$PROJECT/src/net/opentsdb
ln -s $GIT_REPO/src/tsd/client $WORKSPACE/$PROJECT/src/tsd/client
ln -s $GIT_REPO/test/ $WORKSPACE/$PROJECT/test/net/opentsdb

cp $GIT_REPO/build/src/BuildData.java $WORKSPACE/$PROJECT/src/net/opentsdb/

