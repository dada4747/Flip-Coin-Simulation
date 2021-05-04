#! /bin/bash -x
chead=0
ctail=0


while [ $chead -le 21 ] || [ $ctail -le 21 ]
do
                flip=$(((RANDOM % 2) + 1))

                if [[ $flip -eq 1 ]]
                then
                        chead=$(( $chead + 1 ))
#			continue


                elif [[ $flip -eq 2 ]]
                then
                        ctail=$(( $ctail + 1 ))
#                	continue
		else
                        echo "getting error"
                fi
done


echo "head is: $chead"
echo "tail is: $ctail"
