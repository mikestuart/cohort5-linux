#!/bin/bash

# Purpose: Explain conditionals


# copy test.txt file to Documents and delete it from class-demo if copied 
# successfully

echo "Documents directory current content:"
ls ../../Documents
echo ""
if cp test.txt ../../Documents;
then
rm test.txt
echo "file test.txt successfully deleted"; echo ""; echo "Current directory content: "; ls
echo ""
echo "Documents directory content after adding test.txt file: "
ls ../../Documents
else
echo "File test.txt does not exit"
fi








