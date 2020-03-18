#!/bin/bash
echo -n "Please write file name: "
read fileName
if ( [ -f ~/A1T1/${fileName} ] )
then
        echo "This is a TEST"

else
        echo "This is NOT a test"
fi

