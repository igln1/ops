#!/bin/bash
#add fix to exercise6-fix here

#Check minimal number of arguments and set ARGNUM with the number of arguments
if [ $# -lt 2 ]; then
    echo "Number of arguments is less than 2"
    exit 2
else
    ARGNUM=$#
fi

#Determine which host is local and which is remote
if [ $HOSTNAME = "server1" ]; then
  REMOTEMACHINE="server2"
else
  REMOTEMACHINE="server1"
fi

#Get path of last argument
DESTPATH=${!#}

i="1"
BYTES="0"
while [ $i -lt $ARGNUM ]; do
    scp $1  $REMOTEMACHINE:$DESTPATH
    #Get size of current file being copied
    BYTES=$(wc -c < $1)
    #Add currnet size to total size
    TOTALBYTES=$(( $TOTALBYTES + $BYTES ))
    #Shift the next positional parameter to $1
    shift 1
    #Ingrement the while counter
    i=$(( $i + 1 ))
done

echo "$TOTALBYTES"
