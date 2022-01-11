echo "Entered string is " ${1}
source_str=${1}
if  [[ "${source_str}" == "Hello" ]]
then
	echo "The Entered string is not empty"
elif [[ "$source_str" == "" ]]
then
	echo "The string is empty"
fi
