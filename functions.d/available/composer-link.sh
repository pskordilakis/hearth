#################################################
# Link a local composer package
# Globals:
#   None
# Arguments:
#   url
#   package_name
#
# Returns:
#   None
#################################################
composer-link() {
  repositoryName=${3:-local}

  composer config repositories.$repositoryName '{"type": "path", "url": "'$1'", "options": {"symlink": true}}' --file composer.json
  composer require $2 @dev
}
