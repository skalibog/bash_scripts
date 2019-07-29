#!/usr/bin/env zsh

echo "Running pre-push hook"
./scripts/run-brakeman.sh
./scripts/run-tests.sh

# $? stores exit value of the last command
if [ $? -ne 0 ]; then
 echo "Brakeman and Tests must pass before pushing!"
 exit 1
fi