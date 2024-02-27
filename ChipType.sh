#!/bin/bash

xmlFilePath="systemProfiler.xml"

if /usr/libexec/PlistBuddy -c 'Print :0:_items:0:chip_type' "$xmlFilePath" &>/dev/null; then
    chipType=$( /usr/libexec/PlistBuddy -c 'Print :0:_items:0:chip_type' "$xmlFilePath" )
    echo "<result>$chipType</result"
elif /usr/libexec/PlistBuddy -c 'Print :0:_items:0:cpu_type' "$xmlFilePath" &>/dev/null; then
    processorName=$( /usr/libexec/PlistBuddy -c 'Print :0:_items:0:cpu_type' "$xmlFilePath" )
    echo "<result>$processorName</result>"

fi