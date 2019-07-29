#!/usr/bin/env zsh

set -e

cd "${0%/*}/.."

echo "Running rubocop"
bundle exec rubocop