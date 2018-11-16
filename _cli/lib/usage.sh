usage() {
cat <<EOF
$0: Manage your hearth intallation

Format: $0 command [type] [recipe]

Available commands:
    edit, list, create, enable, disable

Options:
    -h  Help - Show this menu.

Examples:
    $0 list: List all recipies
    $0 create env set-env.sh: Create a new  env var recipe

EOF

    exit 1
}
