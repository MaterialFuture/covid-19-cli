# Covid-19 CLI Tracker

Just a silly little tracker that provides a simple way to get the data for
covid-19 to print in your terminal.

I built this for myself since I didn't want to rely on the coronachan irc bot
since I'm not online 24/7, so offline is a must, simplicity, less data usage
since my x200 doesn't have the best wifi-card, and finally the ability to add
silly pictures to the tracker so it's not so gloom `||` doom. I don't claim to
be a bash master, I just use it for small things and editing system configs, so
please don't request anything via update, of you don't like the scripts, change
them yourself or don't use them, you have the freedom to do whatever with it.

**Requirements**: This requires `jq` which I recomend having if you consume a
lot of data via shell scripts, it makes your life a lot easier. The coronachan
script requires `image2ascii` which is self explanitory, but you cna replace
with whatever image or ascii converter you wish.

### What do?

The main file is `coronaupdate.sh`, this is only ran when you want to update the
data. Use an alias to access the data and grep what you need.
`cat` or `less` the cached formatted data and that's about it. 

### Alias

If you want to make full use of this script I'd recomend making an alias for it,
since, c'mon, I know you want to keep looking at the stats.

``` sh
alias corona="cat ~/.cache/corona-formatted" \
      coronaupdate="~/Code/shell/covid/corona-update.sh" \
```

### Cron

If you want to be big-brained about it and not have to worry about running an
alias everytime you want something, then think about modifying the script by
removing the `case` and setting to a cron job. I don't want to make assumptions
when putting a repo on github so I have that conditional for it.

**Note**: Remember to run the update script first. After you do that it's saved
in that `~/.cache/corona-formatted` so just cat that to see what there is.

### Bonus

To get the coronachan image run the `coronachan.sh` script and modify to your
liking, alternatively you can just use the image provided (`coronachan.txt`) and `cat` that in the
terminal. It's included just to have something else. Emojis are optional as
well, just remove them and change to your liking.
