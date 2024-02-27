#!/bin/bash

xmlFilePath="systemProfiler.xml"
modelNumber=$( /usr/libexec/PlistBuddy -c 'Print :0:_items:0:model_number' "$xmlFilePath" )

echo "<result>$modelNumber</result>"
