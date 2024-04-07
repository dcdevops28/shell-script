#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "ERROR:: $2 ... FAILED"
        exit1
    else
        echo "$2 ... SUCCESS"
    fi   
}

    if [ $ID -ne 0 ]
    then 
        echo "Error:: please run this script with root access"
        exit 1 # you can give other than 0
    else
        echo "Yor are root user"
    fi # fi means reverce of if, indicating condition end

    yum install mysql -y

    VALIDATE $? "Installing MYSQL"

    yum install git -y

    VALIDATE $? "installing GIT"