# mailgun-ics-sender

Got a roster and want to send participants calender events by email as reminders?
Here's a quick bash script to attach an *.ics file and send it by [Mailgun](http://www.mailgun.com).

Signup for a [Mailgun](http://www.mailgun.com) account and update the `api_key` and `api_base_url` variables.

#####Todo:
- Take name, email, subject, and filename.ics as input parameters
- *.ics file need to have an "ORGANISER"
- Generate *.ics from *.csv/xlsx with corrct DTSTART/DTEND
- Generate commands to call this script from *.csv/xlsx
