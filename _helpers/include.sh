# Include helper functions

#################################################
# Include a file if exists (is a regural file)
# Globals:
#   None
# Arguments:
#   path
# Returns:
#   None
#################################################
include_if_exists() {
    if [[ -f $1 ]]; then
        source "$1"
    fi
}

#################################################
# Include a file if it is a symbolic link
# Globals:
#   None
# Arguments:
#   path
# Returns:
#   None
#################################################
include_if_symlink_exists() {
    if [[ -L $1 ]]; then
        source "$1"
    fi
}

#################################################
# Include all symlinks inside a directory
# Globals:
#   None
# Arguments:
#   path
# Returns:
#   None
#################################################
include_symlinks() {
    for filename in $( find "$1" -type l ); do
        include_if_symlink_exists "$filename"
    done
}
