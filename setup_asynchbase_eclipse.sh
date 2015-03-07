#!/bin/bash
#
# Setup script for asynchbase on Eclipse for OpenTSDB.

GIT_REPO=/home/$USER/src/asynchbase
WORKSPACE=/home/$USER/opentsdb_dev
PROJECT=asynchbase

for helpdir in src/org/hbase test/org/hbase; do
  mkdir -p $WORKSPACE/$PROJECT/$helpdir
done

ln -s $GIT_REPO/src $WORKSPACE/$PROJECT/src/org/hbase/async
ln -s $GIT_REPO/test/ $WORKSPACE/$PROJECT/test/org/hbase/async
ln -s $GIT_REPO/protobuf $WORKSPACE/$PROJECT
