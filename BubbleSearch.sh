#Bubble Search
temp=0
i=0

while [ true ] 
do
	read a

	if [ $a -eq 0 ] 
	then
		break
	fi

	nos[$i]=$a
	i=`expr $i + 1`
done
n=${#nos[*]}
# Now do the Sorting of numbers 
for (( i = 0; i < $n ; i++ )) 
do 
	for (( j = $i; j < $n; j++ ))
	 	do 
			if [ ${nos[$i]} -gt ${nos[$j]}  ]
				then t=${nos[$i]} 
				nos[$i]=${nos[$j]} 
				nos[$j]=$t 
		fi 
	done 
done 
# Printing the sorted number 
echo -e "----------" 
for (( i=0; i < $n; i++ )) 
do 
echo ${nos[$i]} 
done 
