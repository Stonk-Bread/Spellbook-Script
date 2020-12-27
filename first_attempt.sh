#!/bin/sh

convert_spell=`cat spellbook.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'`

echo $convert_spell >translated_spellbook.txt

original_file=`wc -c spellbook.txt`

translated_file=`wc -c translated_spellbook.txt`

a=$original_file
b=$translated_file

if [ $a == $b ] 
then 
    echo "The incantaion was successful." 
else 
    echo "Your casting was unsuccessful."
fi

