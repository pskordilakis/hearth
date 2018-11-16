#! /usr/bin/env bash
#
# Disable recipe

#################################################
# Disable recipe
# Globals:
#   types
# Arguments:
#   recipe
# Returns:
#   None
#################################################
disable_recipe() {
    if [[ -f $HEARTH_HOME/${types[$1]}/available/$2 ]]; then
        rm "$HEARTH_HOME/${types[$1]}/enabled/$2"
    elif [[-f $HEARTH_HOME/${types[$1]}/secret/$2 ]]; then
        rm "$HEARTH_HOME/${types[$1]}/enabled/$2"
    else
        printf "%s" "recipe does not exist"
    fi
}
