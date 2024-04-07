#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then 
    echo "Error:: please run this script with root access"
    exit 1 # you can give other than 0
 else
    echo "Yor are root user"
fi

yum install mysql -y