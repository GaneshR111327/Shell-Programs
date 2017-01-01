fname=$1
start=$2
end=$3
if [ -z "$fname" ]
then
	exit
fi
exec < $fname
count=1
#if we write line in the place of word it will read lines.
while read line
do
	if [ $count -ge $start ]
	then
		if [ $count -le $end ]
		then			
			echo $word
		fi
	fi
	count=`expr $count + 1`
done
