#Just for ref, check usage in cwd
echo "The current file system usage is : " $(df -h . | awk ' NR == 2 {print $5}')

df -h | awk 'NR > 1 {print $1 " " $5}' |
while read line
do
	echo "$line"
	drive=$(cut -d' ' -f1 <<< $line )
	usage=$(cut -d' ' -f2 <<< $line )
	calv=${usage%\%}
	
	#The echo lines inside loop can be replaced by mail command once postfix setup is ready in ec2 box, timebeing just echo used
	if [[ "$calv" -ge 50 ]]
	then
		echo "The usage in $drive is more than threshold, so sending mail... usage $usage"
	else 
	    echo "The usage in $drive is less than threshold, so not sending mail... usage $usage"
	fi

done
	