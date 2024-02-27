#!/bin/bash
 

xmlFilePath="systemProfiler.xml"
system_profiler -xml SPHardwareDataType > "$xmlFilePath" # Corrected to use variable


modelName=$( /usr/libexec/PlistBuddy -c 'Print :0:_items:0:machine_name' "$xmlFilePath" )
modelNumber=$( /usr/libexec/PlistBuddy -c 'Print :0:_items:0:model_number' "$xmlFilePath" )

if /usr/libexec/PlistBuddy -c 'Print :0:_items:0:chip_type' "$xmlFilePath" &>/dev/null; then
    chipType=$( /usr/libexec/PlistBuddy -c 'Print :0:_items:0:chip_type' "$xmlFilePath" )
    echo "Model Name: $modelName"
    echo "Model Number: $modelNumber"
    echo "Chip Type: $chipType"

elif /usr/libexec/PlistBuddy -c 'Print :0:_items:0:cpu_type' "$xmlFilePath" &>/dev/null; then
    processorName=$( /usr/libexec/PlistBuddy -c 'Print :0:_items:0:cpu_type' "$xmlFilePath" )
    echo "Model Name: $modelName"
    echo "Model Number: $modelNumber"
    echo "Processor Name: $processorName"
fi
 