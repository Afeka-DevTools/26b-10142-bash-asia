#!/bin/bash

BATTERY_PATH="/sys/class/power_supply"

if [ ! -d "$BATTERY_PATH" ]; then
    echo "Battery information not available."
    exit 1
fi

BAT=$(find "$BATTERY_PATH" -name "BAT*" | head -n 1)

if [ -z "$BAT" ]; then
    echo "No battery found."
    exit 1
fi

CAPACITY=$(cat "$BAT/capacity")
STATUS=$(cat "$BAT/status")

echo "Battery: $CAPACITY%"
echo "Status: $STATUS"
