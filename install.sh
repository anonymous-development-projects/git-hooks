#!/bin/sh

if [ -n "$1" ]; then
  echo "Unsupported argument '$1'"
fi

destination="${PWD}/.git/hooks"

curl -Ls https://raw.githubusercontent.com/anonymous-development-projects/git-hooks/master/hooks/commit-msg -o "${destination}/commit-msg"
chmod u+x "${destination}/commit-msg"

echo "Installed git hook as commit-msg hook in ${destination}."
echo "For usage see https://guidelines.adprojects.ru/development/git-commit/"