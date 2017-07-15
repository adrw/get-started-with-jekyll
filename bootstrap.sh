# By Andrew Paradi | Source at https://github.com/andrewparadi/get-started-with-jekyll
#!/usr/bin/env bash

function status {
  Reset='   tput sgr0'       # Text Reset
  Red='     tput setaf 1'          # Red
  Green='   tput setaf 2'        # Green
  Blue='    tput setaf 4'         # Blue
  div="********************************************************************************"
  scriptname="$(basename "$0")"
  case "$1" in
    a)        echo "" && echo "$($Blue)<|${scriptname:0:1}$($Reset) [ ${2} ] ${div:$((${#2}+9))}" ;;
    b)        echo "$($Green)ok: [ ${2} ] ${div:$((${#2}+9))}$($Reset)" ;;
    s|status) echo "$($Blue)<|${scriptname:0:1}$($Reset) [ ${2} ] ${div:$((${#2}+9))}" ;;
    t|title)  echo "$($Blue)<|${scriptname}$($Reset) [ ${2} ] ${div:$((${#2}+8+${#scriptname}))}" ;;
    e|err)    echo "$($Red)fatal: [ ${2} ] ${div:$((${#2}+12))}$($Reset)" ;;
  esac
}

function safe_download {
  timestamp="`date '+%Y%m%d-%H%M%S'`"
  if [ ! -f "$1" ]; then
    status a "Download ${1}"
    curl -s -o $1 $2
    status b "Download ${1}"
  else
    status a "Update ${1}"
    mv $1 $1.$timestamp
    curl -s -o $1 $2
    if diff -q "$1" "$1.$timestamp" > /dev/null; then rm $1.$timestamp; fi
    status b "Update ${1}"
  fi
}

function safe_source {
  if [[ -z $(grep "$1" "$2") ]]; then echo "source $1" >> $2; fi
}

status t "Welcome to Get-Started with Jekyll boostrap!"
status s "Andrew Paradi. https://github.com/andrewparadi/get-started-with-jekyll"

status a "Install to $(pwd) ?"
read -p "Type n to stop, Enter or y to install: " -n 1 -r
  echo    # (optional) move to a new line
  if [[ $REPLY =~ ^[Nn]$ ]]
  then
  status err "Install stopped. Failed to install."
    exit 0
  fi

# Makefile
safe_download ./Makefile https://raw.githubusercontent.com/andrewparadi/get-started-with-jekyll/master/Makefile

# Docker Compose
safe_download ./docker-compose.yml https://raw.githubusercontent.com/andrewparadi/get-started-with-jekyll/master/docker-compose.yml

status a "🍺  Fin. Jekyll Installed!"
exit 0
