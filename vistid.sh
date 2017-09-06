logg=*.logg
if [[ $1 == $logg ]]; then
	read -p "Hva er hendelsen?  >" hendelse
	
	declare -i sum=0

	for line in $(grep "$hendelse" "$1" | cut -f 2);
	do
		sum=$(($sum + $line))

	done



	#while read -r line
	#do
	#	declare -i length
	#	length=${#hendelse}+2
	#	output=$(cut -c $length-)
	#	echo $output
	#	sum=$(( sum + output ))
	#done < <(grep $hendelse $1 | cut -f1 -d$'\t')

	#output=$( grep $hendelse $1 | cut -d$'\t'-f2)
	#read -a arr <<< "$output"
	#arr=($output)
	echo $sum

	#$( cut -c $length- (grep $hendelse $1) )	
else
	echo "Skriv inn en logg-fil"
fi
