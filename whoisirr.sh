#!/bin/bash
OBJ=$1
#

black='\033[30;1m'
red='\033[31;1;4m'
green='\033[32;1;4m'
yellow='\033[33;1;4m'
reset='\033[0m'
arrow='\033[36;5m↳'

IFS=$'\t\n'

whoisIrr=()
  LOOKUP=$(whois -h rr.ntt.net $OBJ )
  if [[ $LOOKUP == *"No entries found"* ]]
    then printf "${red}Object${green} $OBJ ${reset}${red}does not have an IRR entry${reset}\n";
  else
    unset $IFS;
    printf "${green}Your query for ${reset}${yellow}$OBJ${reset}${green} returned:${reset}";
    printf "\n";
    printf "$LOOKUP";
    printf "\n";
  fi
  exit 0
