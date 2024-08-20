#! /bin/bash
echo 'i=1;
for age in $@; 
do if [[ "$age" -le 7 || "$age" -ge 65 ]] ; then
    echo " You can walk in for free "
elif [[ "$age" -gt 7 && "$age" -lt 65 ]] ; then
    echo " You have to pay for ticket "
fi
i=$((i+1)); 
done'
i=1
while [[ $i -le 10 ]] ; do
   echo "$i"
  (( i += 1 ))
done
 
