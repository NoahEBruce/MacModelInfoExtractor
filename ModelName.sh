#!/bin/bash

xmlFilePath="systemProfiler.xml"
modelName=$( /usr/libexec/PlistBuddy -c 'Print :0:_items:0:machine_name' "$xmlFilePath" )

echo "<result>$modelName</result>"
