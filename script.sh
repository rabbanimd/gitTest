# /bin/bash
# age=51
# #if [ "$age" -gt 10 ] && [ "$age" -lt 18 ]
# if [ "$age" -gt 10  -a  "$age" -lt 18 ]
# then
# 	echo "&&adolescents"
# else
# 	echo "i don't know"
# fi
# if [ "$age" -gt 10  -o  "$age" -lt 18 ]
# then
# 	echo "&&adolescents"
# else
# 	echo "i don't know"
# fi
########
#-le : less than equal to
# clear
# echo "while loops"
# num=1
# while [ $num -le 10 ]; do
# 	echo -n "$num"		#-n : to echo without breaking lines
# 	num=$((num+2))
# done

# echo "until loops"
# until [ $num -gt 20 ]; do
# 	echo -n "$num "
# 	num=$((num+1))
# done
# echo ""

# echo "for loops\n"
# for i in $(seq 0 10)
# do
# 	echo "$i"
# done
# echo ""

# echo $1			#arguments as like in java
################## file read stdin #################
# while read line
# do
# 	echo "$line"
# done < "${1:-/dev/stdin}"


################# file stdout
# ls +al / 1>out.txt 2>error.txt # 1 will be considered as standard output file where 2 will be considered as error file
#-----> Both in one
# ls -al / && ls +al >out.txt 2>&1		#does works sometime

#-------------------->   pipe ------------------------->


#-------------------> sending from one file to another -->
# message="sam sepiol"
# export message
# ./temp.sh
#---------> /3ND---->
# echo "Enter a string "
# read st1
# echo "Enter 2nd string"
# read st2
# c=${st1^}$st2			#^ starting character of the string become Uppercased
# echo "$c"
# # c=${c^^}				#^^ :- convert entire string to uppercase
# echo "$c"

#--------------------> arithmatic ops ------------------->
# clear
# echo $(( 31 % 32 ))			#arithmatic
# echo `expr 31 \/ 32 `			#we can do arithmatic like this also

#-------------------> declare ---------------------------->
#declare -r myDeclare=dec 	#creates myDeclare variable with read only permission


#-------------->  	Array 	--------------------->


#---------------> functions -------------------->
# function add()
# {
# 	echo "void add function called"
# }

# function sum()
# {
# 	if [ $1 -gt 0 -a $2 -gt 0 ];
# 	then
# 		echo "$(( $1 + $2 ))"
# 		sum $(($1-1)) $(($2-1))				#recursion
# 	fi
# }

# add
# sum 21 30
#----------  /3nd\------------->
# function add()
# {
# 	local="this is local variable"
# }
# local="this is not local"
# add
# echo $local

# o/p : this is local variable
#-----------> /\/\/\----------->

#----------->  files & directories--------------->
# dir='code'
# if [ -d $dir ]				#-d : for directories. -f : for files
# then
# 	echo "exist"
# else
# 	echo "does not exist"
# fi
#-----. read from file ------------>
# read file
# while IFS= read -r line
# do
# 	echo "$line"
# 	sleep 0.4
# done <$file



#---------------> curl ----------------->
# url="ftp://212.183.159.230/pub/5MB.zip"
# curl -I $(url)				# -I gives info about the file
# curl $(url) -o 				# -o inherits name




#------------> professional menus -------->
# clear
# select distro in kali parrot ubuntu fedora
# do
# 	echo "selected $distro"
# done



#--------------->  press any key to continue------>
# echo "press any key to continue"
# while [ true ]
# do
# 	read -t 3 -n 1
# 	if [ $? = 0 ]
# 	then
# 		echo "key entered "
# 		sleep 2
# 		exit;
# 	else
# 		continue
# 	fi
# done

#----------> inotify  -------------->
# if [ -d "temp" ]
# then
# 	cd "temp/new"
# else
# 	mkdir -p temp/new && cd temp/new
# fi
# inotifywait -m .					#report all activities performed in the given directory
#--------------------\/\/\/\/----------->

#------------------ grep ---------------->
# read file
# echo "Enter string"
# read var
# # grep -i $var $file			# -i : case insenstivity
# # grep -n -i $var $file			# -n : lline numbers
# # grep -c $var $file				# -c : count occurence of expression
# grep -i -v $var $files			# -v : print all lines that do NOT contains the expression

#-------------/\/\/\/\/\/--------------->

#-----------  AWK ---------------------->


#------------ sed (used to replace ) ------------------->
# echo "Enter filename to subsitute"
# read file
# if [ -f $file ]
# then
# 	cat $file | sed 's/Chef/bawar/' > out.txt
# else
# 	echo "No file found : $file"
# fi


#----------- bash debugging ----------->

#bash -x ./{sciptname}



# #starting point 
# set -x

# </>
# .
# .
# .
# set +x (ending point of debug)