#!/bin/bash
if [ "$1" == "init" ]
then
	git remote add -f -t master --no-tags wideq https://github.com/sampsyo/wideq
fi

#git merge -s ours --no-commit wideq/master
git rm -rf wideq/
git read-tree --prefix=wideq/ -u wideq/master:wideq
