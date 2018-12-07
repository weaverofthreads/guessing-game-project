#!/usr/bin/env bash
# File: guessinggame.sh
# howmany only counts files in current directory.
# Directories inside the current folder or the files within them are not counted.
function howmany {
ls -l | grep ^[^d] | wc -l
}
  echo "How many files are in your current directory?"
  answer=$(howmany)
  shouldloop=true;
  while $shouldloop;
  do
  echo "Enter the number of files you think are in your current directory:";
  read guess
  if [[ $guess -gt $answer ]];
  then
     echo "too high! please try again";
     shouldloop=true;
  elif [[ $guess -lt $answer ]];
  then
     echo "too low! please try again";
     shouldloop=true;
  else
     echo "Congratulations! You guessed correctly!";
     shouldloop=false;
  fi
  done
