#!/bin/bash

# Sets the json data to .cache/corona-use and styled data to .cache/corona-formatted
# Edit to your liking, you can add as much data as you like
# This requires `jq` to go through json data via bash,

read -r -p "Download the latest Covid-19 news? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])
	curl https://corona.lmao.ninja/countries/USA > ~/.cache/corona-usa
        ;;
    *)
        ;;
esac
covid_cases=`cat ~/.cache/corona-usa|jq '.cases'`
covid_deaths=`cat ~/.cache/corona-usa|jq '.deaths'`
covid_recovered=`cat ~/.cache/corona-usa|jq '.recovered'`
#cases_deaths_ratio=`echo="$corona_cases/$corona_deaths"|bc`
echo -e "The Status of COVID-19 in the US\n😷Cases:\t$covid_cases\n💀Deaths:\t$covid_deaths\n😀Recovered:\t$covid_recovered" > ~/.cache/corona-formatted
