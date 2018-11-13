#!/usr/bin/env bash
#
# Entry point of Hearth
# Here we will load all aliases, paths and functions

current_dir=$(dirname $0)

source $current_dir/_helpers/include.sh

include_if_exists $current_dir/env.sh
include_symlinks $current_dir/env.d/enabled

include_if_exists $current_dir/aliases.sh
include_symlinks $current_dir/aliases.d/enabled

include_if_exists $current_dir/paths.sh
include_symlinks $current_dir/paths.d/enabled

include_if_exists $current_dir/functions.sh
include_symlinks $current_dir/functions.d/enabled
