for file in $(find . -type f -name "*.c")
do
    prog_name=`echo $file | cut -d'/' -f2 | cut -d'.' -f1`
    prog_name1=`echo $file | cut -d'/' -f2`
    gcc -o $prog_name $file 2>/dev/null
    if [ -f $prog_name ]
    then
        ans=$(./$prog_name) 
        if [ "$ans" = "20" ]
        then
            printf "%s 10\n" $prog_name1
        else
            printf "%s 7\n" $prog_name1
        fi
    else
        printf "%s 5\n" $prog_name1
    fi
done