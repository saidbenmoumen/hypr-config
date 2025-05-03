#!/bin/sh
#  _   _           _       _             
# | | | |_ __   __| | __ _| |_ ___  ___  
# | | | | '_ \ / _` |/ _` | __/ _ \/ __| 
# | |_| | |_) | (_| | (_| | ||  __/\__ \ 
#  \___/| .__/ \__,_|\__,_|\__\___||___/ 
#       |_|                              
# ----------------------------------------------------- 

# ----------------------------------------------------- 
# Define threshholds for color indicators
# ----------------------------------------------------- 

threshhold_green=0
threshhold_yellow=25
threshhold_red=100

# ----------------------------------------------------- 
# Calculate available updates dnf (fedora)
# ----------------------------------------------------- 


# get number of updates using dnf check-update
updates=$(dnf check-update --refresh --quiet | grep -v "^$"| wc -l)



# updates=$(("$updates_arch" + "$updates_aur"))

# ----------------------------------------------------- 
# Testing
# ----------------------------------------------------- 

# Overwrite updates with numbers for testing
# updates=30

# test JSON output
# printf '{"text": "0", "alt": "0", "tooltip": "0 Updates", "class": "red"}'
# exit

# ----------------------------------------------------- 
# Output in JSON format for Waybar Module custom-updates
# ----------------------------------------------------- 

css_class="green"

if [ "$updates" -gt $threshhold_yellow ]; then
    css_class="yellow"
fi

if [ "$updates" -gt $threshhold_red ]; then
    css_class="red"
fi

if [ "$updates" -gt $threshhold_green ]; then
    printf '{"text": "%s", "alt": "%s", "tooltip": "%s Updates", "class": "%s"}' "$updates" "$updates" "$updates" "$css_class"
else
    # printf '{"text": "0", "alt": "0", "tooltip": "0 Updates", "class": "green"}'
fi
