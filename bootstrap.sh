#!/usr/bin/env bash

apfirst="# By Andrew Paradi | Source at https://github.com/andrewparadi/get-started-with-jekyll"
div="***********************************************************************"
function beg {
  echo ""
  echo "BEG [ ${1} ] ${div:${#1}}"
}

function status {
  echo ""
  echo "[ ${1} ] ${div:${#1}}****"
}

function end {
  echo "FIN [ ${1} ] ${div:${#1}}"
}

beg "Install Docker Requirements for Jekyll"
status "Install to $(pwd) ?"
read -p "Type n to stop, Enter or y to install: " -n 1 -r
  echo    # (optional) move to a new line
  if [[ $REPLY =~ ^[Nn]$ ]]
  then
  end "Failed to Install"
    exit 0
  fi

# Makefile
beg "Makefile"
wget https://raw.githubusercontent.com/andrewparadi/get-started-with-jekyll/master/Makefile -O ./.ap-Makefile
first=$(head -n 1 ./Makefile)
if [[ $first == $apfirst ]]; then
  rm ./Makefile
  mv ./.ap-Makefile ./Makefile
else
  mv ./Makefile ./Makefile-original
  mv ./.ap-Makefile ./Makefile
fi
end "Makefile"

# Docker Compose
beg "Docker Compose"
wget https://raw.githubusercontent.com/andrewparadi/get-started-with-jekyll/master/docker-compose.yml -O ./.ap-docker-compose.yml
first=$(head -n 1 ./docker-compose.yml)
if [[ $first == $apfirst ]]; then
  rm ./docker-compose.yml
  mv ./.ap-docker-compose.yml ./docker-compose.yml
else
  mv ./docker-compose.yml ./docker-compose.yml-original
  mv ./.ap-docker-compose.yml ./docker-compose.yml
fi
end "Docker Compose"

end "Install Docker Requirements for Jekyll"
exit 0
