# Create a new recipe

#################################################
# Create recipe
# Globals:
#   types
# Arguments:
#   recipe
# Returns:
#   None
#################################################
create_recipe() {
    local filename="$HEARTH_HOME/${types[$1]}/available/$2"

    if [[ -n $EDITOR ]]; then
        $EDITOR $filename
    else
        touch $filename
    fi
}

#################################################
# Create a secret recipe
# Globals:
#   types
# Arguments:
#   recipe
# Returns:
#   None
#################################################
create_secret_recipe() {
    local filename="$HEARTH_HOME/${types[$1]}/secret/$2"

    if [[ -n $EDITOR ]]; then
        $EDITOR $filename
    else
        touch $filename
    fi
}
