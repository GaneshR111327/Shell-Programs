echo "enter name"
read fname
count=0
echo len($fname)
exec < $fname
while read $fname
do
	#secho $line
	for word in $line
	do
		echo $word
	done		
done
