#!/bin/bash
slack_token="xoxp-XXXXX-XXXXXX-XXXXX-XXXXXXXX" # obtained from api.slack.com
ssid=`/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | awk '/ SSID/ {print substr($0, index($0, $2))}'`
if [ "$ssid" == "caylor-wifi" ] || [ "$ssid" == "ERI-WiFi" ]; then
    /usr/bin/curl https://slack.com/api/users.profile.set --data 'token='$slack_token'&profile=%7B%22status_text%22%3A%20%22At%20Gobabeb%22%2C%22status_emoji%22%3A%20%22%3Adesert%3A%22%7D'  > /dev/null
elif [ "$ssid" == "BREN" ]; then
    /usr/bin/curl https://slack.com/api/users.profile.set --data 'token='$slack_token'&profile=%7B%22status_text%22%3A%20%22In%20Swakopmund%22%2C%22status_emoji%22%3A%20%22%3Adesert_island%3A%22%7D'  > /dev/null
elif [ "$ssid" == "UCSB Secure" ]; then
    /usr/bin/curl https://slack.com/api/users.profile.set --data 'token='$slack_token'&profile=%7B%22status_text%22%3A%20%22In%20Walvis%20Bay%22%2C%22status_emoji%22%3A%20%22%3Aflamingo%3A%22%7D'  > /dev/null
elif [ "$ssid" == "nceas" ]; then
    /usr/bin/curl https://slack.com/api/users.profile.set --data 'token='$slack_token'&profile=%7B%22status_text%22%3A%20%22In%20Windhoek%22%2C%22status_emoji%22%3A%20%22%3Acity_sunrise%3A%22%7D'  > /dev/null
elif [ "$ssid" == "handlebar" ] || [ "luckyllama" ] || [ "theFrenchPress" ]; then
    /usr/bin/curl https://slack.com/api/users.profile.set --data 'token='$slack_token'&profile=%7B%22status_text%22%3A%20%22In%20the%20field%22%2C%22status_emoji%22%3A%20%22%3Agiraffe%3A%22%7D'  > /dev/null
elif [ "$ssid" == "Tawnyfrogmouth" ]; then
    /usr/bin/curl https://slack.com/api/users.profile.set --data 'token='$slack_token'&profile=%7B%22status_text%22%3A%20%22Traveling%22%2C%22status_emoji%22%3A%20%22%3Aearth_africa%3A%22%7D'  > /dev/null
elif [ -n "$ssid" ]; then
    /usr/bin/curl https://slack.com/api/users.profile.set --data 'token='$slack_token'&profile=%7B%22status_text%22%3A%20%22Somewhere%20unknown...%22%2C%22status_emoji%22%3A%20%22%3Ainterrobang%3A%22%7D'  > /dev/null
fi
