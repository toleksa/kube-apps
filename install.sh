#!/bin/bash

if [ $# -ne 1 ]; then
  echo "usage: $0 <app-main.yaml>"
  exit 1
fi

if [ ! -f $1 ]; then
  echo "$1 file not found"
  exit 2
fi

echo "installing $1"
sed -e "s/example.com/`hostname -f`/" $1 | kubectl apply -f -

