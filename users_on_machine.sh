#!/bin/bash

# Get the list of unique users currently logged in
OTHER_USERS=$(who | sed -e 's/ .*//' | sort | uniq)

# Count the number of unique users currently logged in
HOW_MANY=$(who | sed -e 's/ .*//' | sort | uniq | wc -l)

# Display the warning and user information
echo "You are 1 of ${HOW_MANY} users on this machine"
echo "******"
echo "${OTHER_USERS}"
