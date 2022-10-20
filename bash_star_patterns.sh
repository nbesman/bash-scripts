#! /bin/bash

SIDE_ARROW():{
num=5
row=1
col=1
colum=1
while [[ $row -le $num ]] 
do
col=1
     while [[ $col -le $num*2 ]]
     do
	if [[ $col -ge $row*2-1 && $col -le $row+4 ]]
	then
	  echo -n "*"
	else
	  echo -n " "
	fi
	((col++))
	done
echo ""
((row++)) 
done
num=5	
row=1
col=num*2-1
while [[ $row -le 4 ]]	
do
col=num*2-1
	while [[ $col -ge 2 ]]
	do
	if [[ $col -le $row*2+1 && $col-$row -ge 1 ]] 
	then
	echo -n "*"
	else
	echo -n " "
	fi
	((col--))
	done	
echo " "
((row++))
done
}

SIDE_ARROW
