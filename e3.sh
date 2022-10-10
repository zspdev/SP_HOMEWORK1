#input E3

read -p "Enter file or directory name! " SEARCHED

find ./ -name ${SEARCHED}

if [[ -d $SEARCHED ]]; then
    echo "$SEARCHED is a directory"
    ls -l $SEARCHED
elif [[ -f $SEARCHED ]]; then
    echo "$SEARCHED is a file"
    ls -l $SEARCHED
else
    echo "$SEARCHED is another type of file"
    exit 1
fi