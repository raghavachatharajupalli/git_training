echo "Choose the option below "
echo "1) Enter file name to display its content"
echo "2) Enter directory name to disply files in it"


read -p "Your choice "  user_option


case $user_option in 
	1) echo "your option is " $user_option
           read -p "Enter file name " name
	   echo "File content is "
	   cat $name
		;;
	2) echo "your option is " $user_option
           read -p "ENter dir name " name
	   echo "The files in the dir are "
	   fcount=$(ls $name | wc -l)
	   echo "The number of file in the directory are : " $fcount
	   ls $name
		;;
	*) echo "please enter valid input"
		;;
esac


