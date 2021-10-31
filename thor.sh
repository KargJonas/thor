#!/bin/bash

function thor_info () {
  echo -e '\n\033[33;1m  Thor Info\033[00m  ' $1 '\n'
}

# Automatically sets up thor if not found.
function thor_setup () {
  if [ -d ~/.sys/ ] && [ -f ~/.sys/sys.sh ]; then return; fi

  info 'Thor not configured. Running setup.'

  local SYS_URL='https://raw.githubusercontent.com/KargJonas/jtools/master/.sys/sys.sh'

  mkdir ~/.sys
  wget $SYS_URL -O ~/.sys/sys.sh
}