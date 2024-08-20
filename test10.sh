#! /bin/bash

echo 'i=1; 
for age in $@; 
if [[ "$age" -le 7 || "$age" -ge 65 ]] ; then
    do echo " You can walk in for free "
elif [[ "$age" -gt 7 && "$age" -lt 65 ]] ; then
    do echo " You have to pay for ticket "
fi
i=$((i+1)); 
done'
