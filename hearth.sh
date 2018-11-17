#!/usr/bin/env bash
#
# Entry point of Hearth
# Here we will load all aliases, paths and functions

export HEARTH_HOME="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

source $HEARTH_HOME/_helpers/include.sh

include_if_exists $HEARTH_HOME/env.sh
include_symlinks $HEARTH_HOME/env.d/enabled

include_if_exists $HEARTH_HOME/aliases.sh
include_symlinks $HEARTH_HOME/aliases.d/enabled

include_if_exists $HEARTH_HOME/paths.sh
include_symlinks $HEARTH_HOME/paths.d/enabled

include_if_exists $HEARTH_HOME/functions.sh
include_symlinks $HEARTH_HOME/functions.d/enabled
