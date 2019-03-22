#! /bin/sh
#
# m.sh
#
#

CheckFun(){
    local a=`ls -lR|grep "^-"|wc -l`
    local num=$a
    local n=-1
    echo "Enter the number of file in the directory: "
    while [[ $n -ne $num ]]
    do
        read n
        if [[ $n -lt $a ]];then
            echo "low"
            read n
        elif [[ $n -gt $a ]];then
            echo "high"
            read n
        fi
    done
    echo "right"
}

CheckFun
