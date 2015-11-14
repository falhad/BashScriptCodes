#Binary Search
#by farhad arcxx
#Enter Your Array's Number in ACC Order and then press 0 , then enter your number you want search in array ! :) 

temp=0
i=0

while [ true ] 
do
	read a 

	if [ $a -eq 0 ] 
	then
		break
	fi

	temp[$i]=$a
	i=`expr $i + 1`
done

read b


first=0
middle=0
end=${#temp[*]}
i=`expr $i - 1` 


while [ true ] 
do

	if [ $b -lt ${temp[0]}  ] 
	then
		echo "Not Found!"
		break
	fi

 	if [ $b -gt ${temp[$i]}  ] 
	then
		echo "Not Found!"
		break
	fi

	if [ $end -gt $first ]
	then

		middle=`expr $end + $first`
		middle=`expr $middle / 2`

		echo "First = $first"
		echo "Middle = $middle"
		echo "End = $end"

		if [ $b -eq ${temp[$middle]}   ]
		then
			echo "$b Found in Index $middle"
		break	
		fi

		if [ $b -gt ${temp[$middle]}  ]
		then	
		first=$middle
		else
		end=$middle
		fi

	else
		echo "Not Found!"
		break	
        fi

done




