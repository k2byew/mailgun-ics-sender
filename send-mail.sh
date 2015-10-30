#!/bin/bash
email_to=$1 # "name <email@email.com>"
email_subject=$2 # "email subject"
email_attachment=$3 # demo.ics
api_key=key-1234567890abcdefghijklmnopqrstuv
api_base_url=https://api.mailgun.net/v3/sandboxcc1234567890abcdefghijklmnopqrst.mailgun.org

curl -s --user "api:$api_key" \
    "$api_base_url"/messages \
    -F from='Name Here <no-reply@something.com>' \
    -F to="$email_to" \
    -F subject="$email_subject" \
    -F text='Email body text here' \
    -F attachment=@"$email_attachment"
