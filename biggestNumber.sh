#!/bin/bash 
echo "number of arguments : $#"
if [ $# -ne '3' ]
 then 
	 echo "please pass on 3 arguments"
	 exit 
 fi

 if [ $1 -gt $2 ]&& [ $1 -gt $3 ]
 then 
	 echo "$1 is biggest number "
 elif [ $2 -gt $3 ] && [ $2 -gt $1 ]
 then 
	 echo "$2 is biggest number "
 elif [ $1 -eq $2 ] && [ $2 -eq $3 ]
 then 
	 echo "all numbers are same "
 else
	echo "$3 is biggest "
 fi


