#! /bin/bash
echo 'i=1;
for age in $@; 
do if [[ "$age" -le 7 || "$age" -ge 65 ]] ; then
    echo " You can walk in for free "
elif [[ "$age" -gt 7 && "$age" -lt 65 ]] ; then
    echo " You have to pay for ticket "
fi
i=$((i+1));'

b=1
while [[ $b -le 10 ]] ; do
   echo "$b"
  (( b += 1 ))
done
 

