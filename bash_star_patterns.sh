#! /bin/bash

function SIDE_ARROW(){
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

########################################################################################

function SQUARE_N_DIAGONALS()
{
read -p 'How many raws would you like in your square shape? ' size
upper=0
lower=$size-1
left=0 
right=$size-1
row=0 
col=0

while [[ $row -lt $size ]]
do 
	col=0
	while [[ $col -lt $size ]]
	do
	if [[ $col -eq $left || $col -eq $right || $row -eq $upper || $row -eq $lower || $col -eq $row ||
	$row+$col -eq $size-1 ]]
	then
	echo -n "*"
	else
	echo -n " "
	fi
	((col ++))
	done
((row ++))
echo 
done
}

#############################################################

PLUS()
{
read -p 'How many raws would you like in your plus sign? ' size
size1=size-1
halfsize=size/2
row=0
col=0

while [[ $row -le $size1 ]]
	do
	col=0
	while [[ $col -le $size1 ]]
	do
	if [[ $col -eq $halfsize ]] || [[ $row -eq $halfsize ]]
	then
	echo -n "*"
	else
	echo -n " "
	fi
	sleep 0.5
	((col ++))
	done
echo
((row ++)) 
done
}



############################# main ##########################
# remove the # sign to call the desired function below this line. 

# SIDE_ARROW
# SQUARE_&_DIAGONALS
PLUS