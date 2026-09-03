#!/bin/bash

set -euo pipefail

require_command() {
    local command_name="$1"

    if ! command -v "$command_name" >/dev/null 2>&1; then
        printf 'Required command not found: %s\n' "$command_name" >&2
        exit 1
    fi
}

require_command "gh"
require_command "jq"

script_directory=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
repository_root=$(cd "$script_directory/.." && pwd)
label_catalog="$repository_root/other-templates/labels.json"
target_repository="${1:-}"

if [[ -z "$target_repository" ]]; then
    target_repository=$(gh repo view --json nameWithOwner --jq ".nameWithOwner")
fi

# Updating only catalog entries preserves repository-specific labels.
while IFS= read -r label_json; do
    label_name=$(jq -r ".name" <<< "$label_json")
    label_color=$(jq -r ".color" <<< "$label_json")
    label_description=$(jq -r ".description" <<< "$label_json")

    gh label create "$label_name" \
        --repo "$target_repository" \
        --color "$label_color" \
        --description "$label_description" \
        --force
done < <(jq -c ".[]" "$label_catalog")

printf 'Synchronized labels for %s\n' "$target_repository"
