#! /bin/bash
age=$1

if [[ $age -le 7 || $age -ge 65 ]] ; then
    read -rp " You can go in for free "

elif [[ $age -gt 7 && $age -lt 65 ]] ; then
    read -rp " You have to pay for ticket "
fi
