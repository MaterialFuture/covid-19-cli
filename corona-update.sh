#!/bin/bash

read -r -p "Download the latest Corona news? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])
	curl https://corona.lmao.ninja/countries/USA > ~/.cache/corona-usa
        ;;
    *)
        ;;
esac

#read -r -p "Download the coronachan img? (make sure you have image2ascii ;) [y/N] " response
#case "$response" in
#    [yY][eE][sS]|[yY])
#	wget https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/ac72701d-ebb0-402d-98b8-b571bd0e2f48/ddsamig-b772481b-0cae-4bdd-92d4-a90bfa49e40d.png/v1/fill/w_184,h_200,strp/1581164878324_by_corona__chan_ddsamig-200h.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NjMzIiwicGF0aCI6IlwvZlwvYWM3MjcwMWQtZWJiMC00MDJkLTk4YjgtYjU3MWJkMGUyZjQ4XC9kZHNhbWlnLWI3NzI0ODFiLTBjYWUtNGJkZC05MmQ0LWE5MGJmYTQ5ZTQwZC5wbmciLCJ3aWR0aCI6Ijw9NTgxIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.KIaR5n1nDECGp5LDlWRXOCQOUeLI_Jml4lW_SbRZnc4 && mv 1581164878324_by_corona__chan_ddsamig-200h.png\?token\=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7Im coronachan.png && image2ascii -f coronachan.png -s >> ~/.cache/corona.txt && rm coronachan.png
#        ;;
#    *)
#        ;;
#esac

# Now you can access the cached data without having to make so many API calls

#covid_get="cat ~/.cache/corona-usa"
covid_cases=`cat ~/.cache/corona-usa|jq '.cases'`
covid_deaths=`cat ~/.cache/corona-usa| jq '.deaths'`
covid_recovered=`cat ~/.cache/corona-usa| jq '.recovered'`
#cases_deaths_ratio=`echo="$corona_cases/$corona_deaths"|bc`
echo -e "The Status of COVID-19 in the US\n😷Cases:\t$covid_cases\n💀Deaths:\t$covid_deaths\n😀Recovered:\t$covid_recovered" > ~/.cache/corona-formatted
