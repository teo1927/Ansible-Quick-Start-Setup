#!/bin/bash
BASEDIR=$(dirname $0)
ABSPATH=$(readlink -f $0)
ABSDIR=$(dirname $ABSPATH)
NAME="$1"
if [ -z "$1" ] ; then
  echo "No Project Name Defined" ;
  echo "Try Running: New-Project.sh <Project-Name>" ;
  exit ;
  fi
mkdir "${ABSDIR}/${NAME}"
cp -R "${ABSDIR}/.New-Project-Template/Ansible-Quick-Start/." "${ABSDIR}/${NAME}/"