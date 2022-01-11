msg="$(git log --format=format:%s -1)"
echo $msg


files="$(git diff --name-only HEAD HEAD~1)"
echo $files


for sfile in $files
do
	echo $sfile
done
