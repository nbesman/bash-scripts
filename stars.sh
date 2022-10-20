 #! /bin/bash


size=9
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