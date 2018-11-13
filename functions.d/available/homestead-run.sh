#! /usr/bin/env bash
#
#################################################
# Run commands inside homestead through ssh
# Globals:
#   None
# Arguments:
#   url
#   package_name
#
# Returns:
#   None
#################################################
homestead-run() {
  CMD="cd code; $@"
  vagrant ssh -c "$CMD"
}
