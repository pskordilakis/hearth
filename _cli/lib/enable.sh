# Enable recipe

#################################################
# Enable recipe
# Globals:
#   types
# Arguments:
#   recipe
# Returns:
#   None
#################################################
enable_recipe() {
    if [[ -f $HEARTH_HOME/${types[$1]}/available/$2 ]]; then
        ln -s "$HEARTH_HOME/${types[$1]}/available/$2" "$HEARTH_HOME/${types[$1]}/enabled"
    elif [[ -f $HEARTH_HOME/${types[$1]}/secret/$2 ]]; then
        ln -s "$HEARTH_HOME/${types[$1]}/secret/$2" "$HEARTH_HOME/${types[$1]}/enabled"
    else
        error "recipe $2 does not exist\n" 1>&2
    fi
}
