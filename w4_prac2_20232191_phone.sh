if [ $# -eq 0 ]
then
	echo "error"
else
	result=$(cat mydata.txt)

	for arg in "$@"
	do
		result=$(echo "$result"|grep -i "$arg")
	done

	echo "$result" > tmp
	awk -f display.awk tmp
fi

