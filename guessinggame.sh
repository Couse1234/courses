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
            echo "too low"
        elif [[ $n -gt $a ]];then
            echo "too high"
        fi
    done
    echo "congratulation~! You find it!"
}

CheckFun
