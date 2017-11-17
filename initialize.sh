#!/bin/bash
    
#If empty create in current folder else cd to the provided location
echo -e "Enter the directory where you want to initialize the project. \nDefault is your present working directory"
read loc
if [ -n "$loc" ]; then
    cd $loc
fi

#Create the project file
echo "Enter the project name"
read pname
mkdir $pname

#cd into the project file
cd $pname

#Create the data, docs, results and src folders
mkdir data
#cd data
#echo "All the raw data is stored in this folder." > README.md
#cd ..

mkdir doc
#cd doc
#echo "All the documents are stored in this folder." > README.md
#cd ..

mkdir results
#cd results
#echo "All the results are stored in this folder." > README.md
#cd ..

mkdir src
#cd src
#echo "All the execution files and processed data are stored in this folder." > README.md
#cd ..

mkdir bin

touch CITATION.md
touch CONTRIBUTING.md
touch CONDUCT.md

# Initialise in git
echo "Enter the link for the initialised GitHub repo"
read link
if [ -n "$link" ]; then
    git init >/dev/null
    git add . >/dev/null
    git commit -m "Initializing" >/dev/null
    git remote add origin $link >/dev/null 2>/dev/null
    git push -u origin master >/dev/null 2>/dev/null
fi || echo "Could not initialise repo"
    
#Create a README.md file with the description 
echo "Enter a description for the project"
read desc
echo $desc > README.md

#Create a LICENSE if one of the licenses are selected
echo -e "Enter the number for the license you would like to add: \n1. Apache License 2.0 \n2. GNU General Public License v3.0 \n3. MIT License \n4. None"
read lisc
if (($lisc == 1))
then
    curl -L https://raw.githubusercontent.com/avinashkz/data-science-cookie-cutter-project-template-generator/master/licenses/apache.txt > LICENSE 2>/dev/null
elif (($lisc == 2))
then
    curl -L https://raw.githubusercontent.com/avinashkz/data-science-cookie-cutter-project-template-generator/master/licenses/mit.txt > LICENSE 2>/dev/null
elif (($lisc == 3))
then
    curl -L https://raw.githubusercontent.com/avinashkz/data-science-cookie-cutter-project-template-generator/master/licenses/gnu.txt > LICENSE 2>/dev/null
fi

#If the user had initialised git then push
if [ -n "$link" ]; then
    git add . >/dev/null 2>/dev/null
    git commit -m "First commit" >/dev/null 2>/dev/null
    git push >/dev/null 2>/dev/null
fi
