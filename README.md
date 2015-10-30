# mailgun-ics-sender

Got a roster and want to send participants calender events by email as reminders?
Here are some quick bash scripts to create *.ics files and then send them using [Mailgun](http://www.mailgun.com).

Signup for a [Mailgun](http://www.mailgun.com) account and update the `api_key` and `api_base_url` variables in `send-mail.sh`

Create *.ics files by executing create-ics.sh with parameters:
`./create-ics.sh filename 20200101 Fri "Location name" "Summary of event" "Description of event"`

Modify `create-ics.sh` to create new `day` variables similar to the `Wed, Fri, Sat-AM, Sat-PM` which are currently set. These will determine the start and end time of an event.

Use the `script-generator.ods/xlsx` file to generate commands which can be used to create and sends the *.ics file.

To use the script generator, modify the text highlighted in orange and watch the generated commands update. Make sure all dates have two digits. ie. 1 Jan is 01 not just 1. Name and emails can be updated on the second sheet.
