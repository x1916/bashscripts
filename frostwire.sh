#!/bin/bash

# Script to pull filenames from frostwire database, with dates of tracker creation.
#
# by Peter Byrne
#
# Pulls human readable strings from database, if length of filename is greater than 2 then it prints the filename and the date of creation
#
# Date of creation is in unix epoch time milliseconds, and converted to human readable in awk statement.
# ^ The creation date in Unix that .torrent tracker was created. (https://articles.forensicfocus.com/2012/07/19/forensic-examination-of-frostwire-version-5/)
#
# substr() starts at position 2 of the string $9 [unix epoch time milliseconds] until length of string - 2. This is a formatting operation to retrieve unix epoch in milliseconds.
#
# Add 500 to this value, and divide by 1000 to give unix epoch in seconds.
#
# which strtime() can use to convert.
#


#strings search_db.h2.db | grep fileName | awk -F"\"" '{print $4}' > frostwire.txt

#strings search_db.h2.db | grep fileName | awk -F"\":" '{print $2 "\t" $4 "\n" $8 "\t" strftime("%c", (substr($9,2,length($9)-2)+500) / 1000) "\n"}'


strings search_db.h2.db | grep fileName | awk -F"\"" '{if (length($4)>2) print $2 "\t" $4 "\n" $8 "\t" strftime("%c", (substr($9,2,length($9)-2)+500) / 1000) "\n";}'

# test to display unix epoch time in ms.
#strings search_db.h2.db | grep fileName | awk -F"\"" '{print $9}'
