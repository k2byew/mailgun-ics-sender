# mailgun-ics-sender

Got a roster and want to send participants calender events by email as reminders?
Here's a quick bash script to attach an *.ics file and send it by [Mailgun](http://www.mailgun.com).

Signup for a [Mailgun](http://www.mailgun.com) account and update the `api_key` and `api_base_url` variables.

Create *.ics file by executing create-ics.sh with parameters:
`./create-ics.sh filename 20200101 "Location name" "Summary of event" "Description of event"`

#####Todo:
- Take name, email, subject, and filename.ics as input parameters
- Generate *.ics from *.csv/xlsx with corrct DTSTART/DTEND
- Generate commands to call this script from *.csv/xlsx
