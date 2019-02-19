#!/bin/sh

set -e
unset BUNDLE_PATH
unset BUNDLE_BIN

sh -c "bundle $*"
