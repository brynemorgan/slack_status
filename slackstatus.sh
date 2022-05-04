#!/bin/bash
slack_token="xoxp-XXXXX-XXXXXX-XXXXX-XXXXXXXX" # obtained from api.slack.com
ssid=`/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | awk '/ SSID/ {print substr($0, index($0, $2))}'`
if [ "$ssid" == "caylor-wifi" ] || [ "$ssid" == "ERI-WiFi" ]; then
    /usr/bin/curl https://slack.com/api/users.profile.set --data 'token='$slack_token'&profile=%7B%22status_text%22%3A%20%22In%20Ellison%20Office%22%2C%22status_emoji%22%3A%20%22%3Aworld_map%3A%22%7D'  > /dev/null
elif [ "$ssid" == "Caylornet" ]; then
    /usr/bin/curl https://slack.com/api/users.profile.set --data 'token='$slack_token'&profile=%7B%22status_text%22%3A%20%22At%20Home%22%2C%22status_emoji%22%3A%20%22%3Ahouse_with_garden%3A%22%7D'  > /dev/null
elif [ "$ssid" == "BREN" ]; then
    /usr/bin/curl https://slack.com/api/users.profile.set --data 'token='$slack_token'&profile=%7B%22status_text%22%3A%20%22In%20Bren%20School%22%2C%22status_emoji%22%3A%20%22%3Arecycle%3A%22%7D'  > /dev/null
elif [ "$ssid" == "UCSB Secure" ]; then
    /usr/bin/curl https://slack.com/api/users.profile.set --data 'token='$slack_token'&profile=%7B%22status_text%22%3A%20%22Somewhere%20On%20Campus%22%2C%22status_emoji%22%3A%20%22%3Aschool%3A%22%7D'  > /dev/null
elif [ "$ssid" == "nceas" ]; then
    /usr/bin/curl https://slack.com/api/users.profile.set --data 'token='$slack_token'&profile=%7B%22status_text%22%3A%20%22At%20NCEAS%22%2C%22status_emoji%22%3A%20%22%3Aoffice%3A%22%7D'  > /dev/null
elif [ "$ssid" == "handlebar" ] || [ "luckyllama" ] || [ "theFrenchPress" ]; then
    /usr/bin/curl https://slack.com/api/users.profile.set --data 'token='$slack_token'&profile=%7B%22status_text%22%3A%20%22Having%20Coffee%22%2C%22status_emoji%22%3A%20%22%3Acoffee%3A%22%7D'  > /dev/null
elif [ "$ssid" == "Tawnyfrogmouth" ]; then
    /usr/bin/curl https://slack.com/api/users.profile.set --data 'token='$slack_token'&profile=%7B%22status_text%22%3A%20%22Using%20Phone%20Hotspot%22%2C%22status_emoji%22%3A%20%22%3Aiphone%3A%22%7D'  > /dev/null
elif [ -n "$ssid" ]; then
    /usr/bin/curl https://slack.com/api/users.profile.set --data 'token='$slack_token'&profile=%7B%22status_text%22%3A%20%22Somewhere%20unknown...%22%2C%22status_emoji%22%3A%20%22%3Ainterrobang%3A%22%7D'  > /dev/null
fi

