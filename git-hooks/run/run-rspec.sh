#!/usr/bin/env zsh

set -e

cd "${0%/*}/.."

echo "Running tests"
bundle exec rspec
