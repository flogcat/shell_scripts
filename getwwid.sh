#!/bin/bash
#
#   NAME
#       getwwid.sh 
#
#   DESCRIPTION
#       <This script is get multipath wwid>
#
#   NOTES
#       <scsi_id path in the multipath.conf getuid_callout>
#
#   MODIFIED    (MM/DD/YY)
#   wesley       01/29/19  - frist created

for i in `gawk '{print $4}' /proc/partitions | grep sd`
    do
    echo "Device:$i WWID:`/lib/udev/scsi_id --whitelisted --device=/dev/$i`"
done | sort -t ":" -k 3
