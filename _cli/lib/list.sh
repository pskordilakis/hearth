# List available recipies

#################################################
# List available recipies
# Globals:
#   types
# Arguments:
#   recipe
# Returns:
#   None
#################################################
list_available() {
    shopt -s globstar nullglob

    printf "Available %s\n" "$1"

    local result=$( find $HEARTH_HOME/$2/available -type f | xargs -n1 basename )

    for value in "${result[@]}"; do
        printf "%s\n" "${value}"
    done

    printf "\n"
}

#################################################
# List enabled recipies
# Globals:
#   types
# Arguments:
#   recipe
# Returns:
#   None
#################################################
list_enabled() {
    printf "Enabled %s\n" "$1"

    local result=$( find $HEARTH_HOME/$2/enabled -type l | xargs -n1 basename )

    for value in "${result[@]}"; do
        printf "%s\n" "${value}"
    done

    printf "\n"
}

#################################################
# List all recipies
# Globals:
#   types
# Arguments:
#   recipe
# Returns:
#   None
#################################################
list() {
    list_available "Environmental Variables" env.d
    list_enabled "Environmental Variables" env.d

    list_available "Paths" paths.d
    list_enabled "Paths" paths.d

    list_available "Alliases" aliases.d
    list_enabled "Alliases" aliases.d

    list_available "Functions" functions.d
    list_enabled "Functions" functions.d
}
