#!/bin/sh

set -e

echo "EXECUTING BUNDLER FROM $BUNDLE_HOME"
sh -c "bundle $*"
