#! /bin/bash -x

flip=$(((RANDOM % 2) + 1))
if [[ $flip -eq 1 ]]
then
	echo "winner is tail"
elif [[ $flip -eq 2 ]]
then
	echo "winner is head"
else
	echo "getting error"
fi
