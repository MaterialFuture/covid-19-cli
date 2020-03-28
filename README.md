# Covid-19 CLI Tracker

Just a silly little tracker that provides a simple way to get the data for
covid-19 to print in your terminal.

I built this for myself since I didn't want to rely on the coronachan irc bot
since I'm not online 24/7

If you want to make full use of this script I'd recomend making an alias for it,
since, c'mon, I know you want to keep lookingg at the stats.

``` sh
alias corona="cat ~/.cache/corona-formatted" \
      coronaupdate="~/Code/shell/covid/corona-update.sh" \
```

**Note**: Remember to run the update script first. After you do that it's saved
in that `~/.cache/corona-formatted` so just cat that to see what there is.
