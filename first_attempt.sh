#!/bin/bash

convert_spell=`cat spellbook.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'`

echo $convert_spell >translated_spellbook.txt

original_file=`wc -c spellbook.txt`

translated_file=`wc -c translated_spellbook.txt`

a=$original_file
b=$translated_file

if [ "$a == $b" ] 
then 
    echo "The incantaion was successful $(whoami)." 
else 
    echo "Your casting was unsuccessful $(whoami)."
fi

if [ " $a == $b " ]
then 
    echo "The original text has been consumed." 
else   
    echo "Something went wrong, the original text has not been consumed."
fi


if [ "$a == $b" ]
then 
    rm spellbook.txt
fi

# I am attempting to rot13 the content of spellbook.txt and output it to a new 
#   file named translated_spellbook.txt
# I then want to compare the amount of characters between the two, as a way to 
#    verify that the process worked. 
# I'm getting " /first_attempt.sh: 14: [: 18: unexpected operator
# Your casting was unsuccessful. " 
# The new file is created, with the appropriately formatted text, and the 
# character number does in fact match. 

#fixed issues, and have implemented the rest of the script. 
# The original file will now be deleted after comparing the number of characters.
#   This does the job, but is not a meaningful test. 
# Will add a filesize comparison in addition to character comparison, to add a meaningful layer, as well as see if I can layer without breaking it.