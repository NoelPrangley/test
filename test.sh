#! /bin/bash
echo 'age=$1

if [[ $age -le 7 || $age -ge 65 ]] ; then
    echo " You can walk in for free "
elif [[ $age -gt 7 && $age -lt 65 ]] ; then
    echo " You have to pay for ticket "
fi
'
sleep 1
read -rp "Write your age: " your_age
your_age=${your_age:-none}
age=$your_age
echo '
if [[ $age -le 7 || $age -ge 65 ]] ; then
    echo " You can walk in for free "
elif [[ $age -gt 7 && $age -lt 65 ]] ; then
    echo " You have to pay for ticket "
fi'
