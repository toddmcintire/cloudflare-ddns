# cloudflare-ddns
Script to update Cloudflare's Dynamic DNS api, just edit the values at the start of ```main.sh```.

## Install
```
sudo apt install jq
git clone https://github.com/toddmcintire/cloudflare-ddns.git
```

update your crontab as follows to have script run automatically
```
# ┌───────────── minute (0 - 59)
# │ ┌───────────── hour (0 - 23)
# │ │ ┌───────────── day of the month (1 - 31)
# │ │ │ ┌───────────── month (1 - 12)
# │ │ │ │ ┌───────────── day of the week (0 - 6) (Sunday to Saturday 7 is also Sunday on some systems)
# │ │ │ │ │ ┌───────────── command to issue                               
# │ │ │ │ │ │
# │ │ │ │ │ │
# * * * * * /bin/bash {Location of the script}
```

## License
[GPL-3.0 license](https://github.com/toddmcintire/cloudflare-ddns.git)
