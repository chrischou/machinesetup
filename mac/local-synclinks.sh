#!/usr/bin/env bash

## include link util
# Full path of this script, will work with symlink
THIS="$(python -c "import os; print(os.path.realpath('$0'))")"

# script root
ROOT_DIR=`dirname $(dirname "$THIS")`

echo $ROOT_DIR
# 'Dot' means 'source', i.e. 'include'
. "$ROOT_DIR/mac/link_util_incl.sh"

## setup profile and vimrc
rmsymlink $HOME/.profile
createsymlink $HOME/machinesetup/osx/.profile $HOME/.profile 
