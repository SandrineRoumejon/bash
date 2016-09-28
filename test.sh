#!/usr/bin/env bash

repo_name=$1

usage="$(basename "$0") repo_name username -- Create a GitHub Repository"

if [ "$1" == "-h" ] || [ "$1" == "--help" ] ; then
  echo "$usage"
  exit
fi

curl -u $2 https://api.github.com/user/repos -d" {\"name\":\"$repo_name\"}"