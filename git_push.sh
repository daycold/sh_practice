#!/bin/bash

while getopts "m:" opt
do
  case $opt in
    m)
      git commit -m "$OPTARG"
      ;;
  esac
done
git checkout master;
git pull;
git checkout -;
git rebase origin/master;
git push;
