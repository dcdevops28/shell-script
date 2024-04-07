#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then 
    echo "Error:: please run this script with root access"
    exit 1 # you can give other than 0
 else
    echo "Yor are root user"
fi

yum install mysqll -y

if [ $? -ne 0 ]
then
  echo "ERROR:: installing MySQL is failed"
  exit1
else
     echo "install mySQL is success"
fi

yum install git -y

if [ $? -ne 0 ]
then
  echo "ERROR:: installing Git is failed"
  exit1
else
     echo "install Git is success"
fi