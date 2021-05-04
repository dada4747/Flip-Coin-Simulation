#! /bin/bash -x
chead=0
ctail=0

cwin1=0
cwin2=0

 while [ $chead -le 21 ] || [ $ctail -le 21 ]
        do
                flip=$(((RANDOM % 2) + 1))
                if [[ $flip -eq 1 ]]
                then
                        chead=$(( $chead + 1 ))

                        if [[ $chead -eq 21 ]]
                        then
                                cwin1=$(($cwin2 + 1))
                                break
                        fi

                elif [[ $flip -eq 2 ]]
                then
                        ctail=$(( $ctail + 1 ))
                        if [[ $ctail -eq 21 ]]
                        then
                                cwin2=$(($cwin1 + 1))
                                break
                        fi
                else
                        echo "getting error"
                fi
        done





echo "round $i"

echo "head is: $chead"
echo "tail is: $ctail"

echo "head win $cwin1 time  "
echo "tail is win $cwin2 time "
