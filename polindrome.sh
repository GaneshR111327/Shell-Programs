echo "enter file name:"
read fname
exec < $fname
while read line
do
	for word in $line
	do
	k=`echo $word | rev`
	if [ $k = $word ]
	then
		echo $word" is a polindorm"
	fi
	done
done
