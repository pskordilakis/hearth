#! /usr/bin/env bash
#
# Create a new recipe

create-recipe() {
    case $1 in
    "env")
        create-available "env.d" $2
        ;;
    "alias")
        create-available "aliases.d" $2
        ;;
    "function")
        create-available "functions.d" $2
        ;;
    "path")
        create-available "paths.d" $2
        ;;
    esac
}

create-available() {
    local filename="$HEARTH_HOME/$1/available/$2"

    if [[ -n $EDITOR ]]; then
        $EDITOR $filename
    else
        touch $filename
    fi
}
