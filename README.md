# Covid-19 Status
Just a script that helps automate the receiving and parsing of Covid-19 data.

I built this for myself since I didn't want to rely on an irc bot
since I'm not online 24/7, so offline is a must, simplicity, less data usage
because my x200 doesn't get the best wifi signal when out.

**Requirements**: This requires `jq` which I recommend having if you consume a
lot of data via shell scripts, it makes your life a lot easier.

### What do?
The main file is `c19-update.sh`, this is only ran when you want to update the
data. Use an alias to access the data and grep what you need.
`cat` or `less` the cached formatted data and that's about it. 

## Running

``` sh
chmod +x ./c19-update.sh
./c19-update.sh
```


### Alias
If you want to make full use of this script I'd recommend making an alias for it,
since, c'mon, I know you want to keep looking at the stats.

``` sh
alias covid-stats="cat ~/.cache/corona-formatted" \
      covid-update="<path-to-script>/c19-update.sh" \
```

### Cron
If you want to be big-brained about it and not have to worry about running an
alias every time you want something, then think about modifying the script by
removing the `case` and setting to a cron job. I don't want to make assumptions
when putting a repo on github so I have that conditional for it.

``` sh
@daily <path-toscript>/c19-update.sh
```

**Note**: Remember to run the update script first. After you do that it's saved
in that `~/.cache/corona_stats` so just cat that to see what there is.
