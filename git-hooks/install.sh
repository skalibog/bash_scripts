#!/usr/bin/env zsh

GIT_DIR=$(git rev-parse --git-dir)
SCRIPT_PATH=`dirname "$0"`

# set git ignore to scripts

echo "/scripts/" >> .gitignore

echo "Installing hooks..."
# this command creates symlink to our pre-commit script
cp -R $SCRIPT_PATH/run/ ./scripts/
cp $SCRIPT_PATH/pre-commit.sh $GIT_DIR/hooks/pre-commit
cp $SCRIPT_PATH/pre-push.sh $GIT_DIR/hooks/pre-push
echo "Done!"