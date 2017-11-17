#! /bin/bash


#cd $1
#mkdir $2
#cd $2
#mkdir data

#mkdir doc

#mkdir results

#mkdir src

echo "Enter a description for the project"

read desc

echo $desc > READ.md


echo -e "Enter the number for the license you would like to add: \n1. Apache License 2.0 \n2. GNU General Public License v3.0 \n3. MIT License \n4. None"

read lisc

if (($lisc == 1))
then
    echo " " > LICENSE.md


