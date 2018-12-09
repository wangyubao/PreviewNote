#!/usr/bin/env bash

if [ $# -ne 1 ]; then
    echo "FAILURE"
    exit 1
fi

commit_log=$1

if [ "`git status`" != "" ]; then
	git pull
	git add --all
	git commit -m "${commit_log}"
	git push origin
fi