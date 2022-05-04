# slack_status
A simple script to update Slack Status based on wifi locations. 

1. Obtain an API token from [Slack](https://api.slack.com)
2. Edit `slackstatus.sh` to include your API key
3. Change the values of `$ssid` and `status_text`, and `status_emoji` in the API calls (`curl` commands) to the stuff you want. 
4. Put `local.status.plist` in your `~/Library/LaunchAgents` folder
5. Put `slackstatus.sh` in your `~/Library/Application Support` directory and make sure it is executable (e.g. `> chmod 775 slackstatus.sh`).

  
Notes: 
These strings in your API calls need to be [URL encoded](https://www.urlencoder.io).
Emoji names must match the Slack-approved emoji for your organization (e.g. `:coffee:`)


