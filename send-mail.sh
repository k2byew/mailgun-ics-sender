#!/bin/bash
email_to="name <email@email.com>"
email_subject="email subject"
email_attachment=demo.ics
api_key=key-1234567890abcdefghijklmnopqrstuv
api_base_url=https://api.mailgun.net/v3/sandboxcc1234567890abcdefghijklmnopqrst.mailgun.org

curl -v -s --user "api:$api_key" \
    "$api_base_url"/messages \
    -F from='Name Here <no-reply@something.com>' \
    -F to="$email_to" \
    -F subject="$email_subject" \
    -F text='Email body text here' \
    -F attachment=@"$email_attachment"
