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
    local link="$HEARTH_HOME/${types[$1]}/enabled/$2"
    if [[ -L "$link" ]]; then
        rm "$link"
    else
        error "recipe $2 does not exist\n"
    fi
}
