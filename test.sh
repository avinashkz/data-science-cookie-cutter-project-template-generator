#! /bin/bash

read lisc
if (($lisc == 1))
then
    curl -L https://raw.githubusercontent.com/avinashkz/data-science-cookie-cutter-project-template-generator/master/licenses/apache.txt > LICENSE.txt
elif (($lisc == 2))
then
    curl -L https://raw.githubusercontent.com/avinashkz/data-science-cookie-cutter-project-template-generator/master/licenses/mit.txt > LICENSE.txt
elif (($lisc == 3))
then
    curl -L https://raw.githubusercontent.com/avinashkz/data-science-cookie-cutter-project-template-generator/master/licenses/gnu.txt > LICENSE.txt 2>/dev/null
fi