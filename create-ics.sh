#!/bin/bash
filename=$1.ics
date=$2 # In YYYYMMDD format
day=$3
location=$4
summary=$5
description=$6

if [ "$day" = "wed" ] || [ "$day" = "fri" ]
	then
		startTime=1930
		endTime=2130

	elif [ "$day" = "sat-am" ]
		then
			startTime=1000
			endTime=1100

	elif [ "$day" = "sat-pm" ]
		then
			startTime=1230
			endTime=1330
fi

echo BEGIN:VCALENDAR > "$filename"
echo VERSION:2.0 >> "$filename"
# Pick any VTIMEZONE config and insert it here
# http://erics-notes.blogspot.co.nz/2013/05/fixing-ics-time-zone.html
# Or create an event in any random timezone then copy from what Google Calender generates, eg:
echo BEGIN:VTIMEZONE >> "$filename"
echo TZID:Pacific/Auckland >> "$filename"
echo TZURL:http://tzurl.org/zoneinfo-outlook/Pacific/Auckland >> "$filename"
echo X-LIC-LOCATION:Pacific/Auckland >> "$filename"
echo BEGIN:DAYLIGHT >> "$filename"
echo TZOFFSETFROM:+1200 >> "$filename"
echo TZOFFSETTO:+1300 >> "$filename"
echo TZNAME:NZDT >> "$filename"
echo DTSTART:19700927T020000 >> "$filename"
echo RRULE:FREQ=YEARLY\;BYMONTH=9\;BYDAY=-1SU >> "$filename"
echo END:DAYLIGHT >> "$filename"
echo BEGIN:STANDARD >> "$filename"
echo TZOFFSETFROM:+1300 >> "$filename"
echo TZOFFSETTO:+1200 >> "$filename"
echo TZNAME:NZST >> "$filename"
echo DTSTART:19700405T030000 >> "$filename"
echo RRULE:FREQ=YEARLY\;BYMONTH=4\;BYDAY=1SU >> "$filename"
echo END:STANDARD >> "$filename"
echo END:VTIMEZONE >> "$filename"
# End VTIMEZONE config
echo BEGIN:VEVENT  >> "$filename"
echo ORGANIZER\;CN=Organizer Name:mailto:organizer.name\@domain.com  >> "$filename"
echo DTSTAMP:20000000T000000Z  >> "$filename"
echo DTSTART\;TZID=\"Pacific/Auckland\":"$date"T"$startTime"00  >> "$filename" # Specify timezone
echo DTEND\;TZID=\"Pacific/Auckland\":"$date"T"$endTime"00  >> "$filename"
echo SUMMARY:"$summary" >> "$filename"
echo LOCATION:"$location" >> "$filename"
echo DESCRIPTION:"$description" >> "$filename"
echo END:VEVENT  >> "$filename"
echo END:VCALENDAR  >> "$filename"
