#!/bin/bash

# Keeping this as a separate script intentionally to avoid complexity in the deployment script.
# PLEASE CHECK T0 TWIKI COOKBOOK TO SEE MORE INFORMATION ABOUT PATCHING THE T0 WMAGENT

BASE_DIR=/data/tier0
DEPLOY_DIR=$BASE_DIR/srv/wmagent

#Patches on top of 3.0.6
#Fix updates to t0_request
#Patches on top of 3.0.6
curl https://patch-diff.githubusercontent.com/raw/dmwm/WMCore/pull/11353.patch | patch -d $DEPLOY_DIR/current/apps/t0/data/couchapps/ -p 3
curl https://patch-diff.githubusercontent.com/raw/dmwm/WMCore/pull/11353.patch | patch -d $DEPLOY_DIR/current/apps/t0/lib/python3.8/site-packages/ -p 3
