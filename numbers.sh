#! /bin/bash 
#numbers.sh 
#Created by Gary Zeri, Chapman University, for CPSC298


########################################################
#All functions defined here 

#function to get a number from the user
getNumber () 
{

	echo "Please enter a postive number: "
	read number 

}

#//////////////////////////////////////////////////////

checkEvenOrOdd ()
{

	#check if number is even 
	if [ $[$1%2] -eq  0 ]	
	then
		#display to the user if number is even
		echo "$1 is even." 
 	else
		#display to the user the number is odd
		echo "$1 is odd."
	fi

}

#######################################################


#prompt the user for a positive number 
getNumber

#check to make sure only positive numbers were entered with no characters
while echo $number | grep -v "^[0-9]*$"
do

	#print warning message to the user 
	echo "Please make sure the you have entered a postive number!"
	echo "No characters or symbols allowed!"

	#get number from user again 
	getNumber

done

#init loop control variable
N=1

#loop from 1 to the number specifed by the user 
while [ $N -ne $((number+1)) ]
do 

	#check if N is even or odd and display that to the user 
	checkEvenOrOdd $N

	#increment N by one
	N=$((N+1))

done 


 
