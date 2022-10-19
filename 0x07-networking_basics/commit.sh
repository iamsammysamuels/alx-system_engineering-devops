#!/usr/bin/env bash
arg_no=$#
x=10
if (($arg_no == 2))
then
	sleep 5
	echo -e "Pushing $1 to github\n"
	while (($x > 0))
	do
		sleep 1
		echo -n ">>"
		((x-=1))
	done
	sleep 2
	git add $1
	sleep 3
	echo -e "\n"
	git commit -m "$2"
	sleep 3
	git push
	sleep 3
	echo -e "\n>>>>>>>>>>> Successfully pushed $1 with the commit message - "$2" >>>>>>>>>>>>>>"
elif (($arg_no > 2))
then
	 x=20
	 while (($x > 0))
	 do
		 echo -n ">>"
		 ((x-=1))
		 sleep 1
	 done
	 echo " Arguments are more than expected"

else
	x=20
	while (($x > 0))
	do
		echo -n ">>"
		((x-=1))
		sleep 1
	done
	if [ ! $1 ]
	then
		echo " Please enter the file to commit .:."
		exit
	elif [ ! $2 ]
	then
		echo " Please enter the commit message .:."
		exit
	fi
fi
