#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $? -ne 0 ]
    then
        echo "ERROR:: installing is failed"
        exit1
    else
        echo "install is success"
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

VALIDATE

yum install git -y

VALIDATE