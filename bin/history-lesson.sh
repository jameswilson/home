#!/bin/sh
grep -h "^$(date '+%m/%d')" /usr/share/calendar/calendar.{holiday,history,computer}|cut -f2
