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

# I am attempting to rot13 the content of spellbook.txt and output it to a new 
#   file named translated_spellbook.txt
# I then want to compare the amount of characters between the two, as a way to 
#    verify that the process worked. 
# I'm getting " /first_attempt.sh: 14: [: 18: unexpected operator
# Your casting was unsuccessful. " 
# The new file is created, with the appropriately formatted text, and the 
# character number does in fact match. 

