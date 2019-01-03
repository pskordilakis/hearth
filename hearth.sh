# Entry point of Hearth
# Here we will load all aliases, paths and functions

#################################################
# Return true if current shell is bash
# Globals:
#   None
# Arguments:
#   None
# Returns:
#   None
#################################################
is_bash() {
    if type compgen >/dev/null 2>/dev/null; then
        echo true
    else
        echo false
    fi
}

#################################################
# Return true if current shell is zsh
# Globals:
#   None
# Arguments:
#   None
# Returns:
#   None
#################################################
is_zsh() {
    if type compdef >/dev/null 2>/dev/null; then
        echo true
    else
        echo false
    fi
}

declare HEARTH_HOME

if [[ $(is_bash) = true ]]; then
    HEARTH_HOME="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
elif [[ $(is_zsh) = true ]]; then
    HEARTH_HOME=$(dirname "$0")
else
    printf "Could not determine current shell\n" 1>&2
    return
fi

export HEARTH_HOME

# shellcheck source=_helpers/include.sh
source "$HEARTH_HOME/_helpers/include.sh"

include_if_exists "$HEARTH_HOME/env.sh"
include_symlinks "$HEARTH_HOME/env.d/enabled"

include_if_exists "$HEARTH_HOME/aliases.sh"
include_symlinks "$HEARTH_HOME/aliases.d/enabled"

include_if_exists "$HEARTH_HOME/paths.sh"
include_symlinks "$HEARTH_HOME/paths.d/enabled"

include_if_exists "$HEARTH_HOME/functions.sh"
include_symlinks "$HEARTH_HOME/functions.d/enabled"
