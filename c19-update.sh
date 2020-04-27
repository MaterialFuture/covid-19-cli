#!/bin/bash

# Sets the json data to .cache/corona-use and styled data to .cache/corona-formatted
# Edit to your liking, you can add as much data as you like
# This requires `jq` to go through json data via bash,

# Specify country in the `-c` flag
while getopts c: option
do
case "${option}"
in
c) COUNTRY=${OPTARG};;
esac
done

# If no flag is specified then default to "USA"
if [[ -z "$COUNTRY" ]]; then
COUNTRY="USA"
fi

# Prompts user what they'd like to do. Also saves json data to cache so use can do as they please.
read -r -p "Download the latest Covid-19 news? [y/N] " response
case "$response" in
[yY][eE][sS]|[yY])
curl https://corona.lmao.ninja/v2/countries/$COUNTRY > ~/.cache/covid-json ;;
*) ;;
esac

# Parse JSON and create variables
C19_CASES=`cat ~/.cache/corona-usa|jq '.cases'`
C19_CASES_TODAY=`cat ~/.cache/corona-usa|jq '.todayCases'`
C19_DEATHS=`cat ~/.cache/corona-usa|jq '.deaths'`
C19_RECOVERED=`cat ~/.cache/corona-usa|jq '.recovered'`
C19_COUNTRY=`cat ~/.cache/corona-usa|jq '.country'`

# Save data to `.cache` formatted
echo -e "The Status of COVID-19\nCountry:\t$C19_COUNTRY\n😷Cases:\t$C19_CASES\n😷Cases Today:\t$C19_CASES_TODAY\n💀Deaths:\t$C19_DEATHS\n😀Recovered:\t$C19_RECOVERED" > ~/.cache/covid_stats
