#!/usr/bin/env bash

if [ $# -ne 2 ]; then
  # TODO: print usage
  echo "You must format your args like: $0 <planet region> <feature>"
  echo "valid regions indentifiers:"
  echo "central-america"
  echo "north-america\n\n"
  echo "valid features: see features/"

  exit 1
fi

REGION=$1
FEATURE=$2
make -f ./Makefile
