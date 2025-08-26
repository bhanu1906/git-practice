#!/bin/bash

#USERID=$(id -u)
#echo "user ID is: $USERID"

VALIDATE(){
    if [ $USERID -ne 0 ]
    then
        echo "$2 is...FAILED"
        exit 1
    else
        echo "$2 is...SUCCESS"
fi
}

if [ $USERID -ne 0 ]
then
    echo "Please run this script wityh root priveleges"
    exit 1
fi
    dnf list installed git


    if [ $? -ne 0 ]
    then
        echo "git is not installed,going to install it.."
        dnf install git -y
        VALIDATE $? "Installing git"

echo "git installation is not success...check it"
        exit 1
    else
        echo "git installation is sucess"
    fi
else
    echo "Git is already installed, nothing to do.."
fi

dnf list installed mysql

if [ $? -ne 0 ]
then
    echo "MYSQL" is not installed...going to install"
    dnf install mysql -y
    VALIDATE $? "Installing MYSQL"
    echo "MYSQL is already installed..nothing to do"
fi


