#!/bin/sh

repo_url="https://gitlab.com/admitad-projects/tools/git-hooks.git"
release_tag=master
script_file="https://raw.githubusercontent.com/craicoverflow/sailr/$release_tag/sailr.sh"


if [ -n "$1" ]; then
  echo "Unsupported argument '$1'"
fi

destination="${PWD}/.git/hooks"

curl https://gitlab.com/admitad-projects/tools/git-hooks/-/raw/master/hooks/commit-msg -o "${destination}/commit-msg"
chmod u+x "${destination}/commit-msg"

echo "Installed git hook as commit-msg hook in ${destination}."
echo "For usage see https://github.com/craicoverflow/sailr#usage"