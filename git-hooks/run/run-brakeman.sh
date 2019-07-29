#!/usr/bin/env zsh

set -e

cd "${0%/*}/.."

echo "Running brakeman"
bundle exec brakeman