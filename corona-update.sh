#!/bin/bash

# Sets the json data to .cache/corona-use and styled data to .cache/corona-formatted
# Edit to your liking, you can add as much data as you like
# This requires `jq` to go through json data via bash,

read -r -p "Download the latest Covid-19 news? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])
	curl https://corona.lmao.ninja/v2/countries/USA > ~/.cache/corona-usa
        ;;
    *)
        ;;
esac
