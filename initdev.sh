#!/bin/bash


if test $1 = "-help"
	then
	echo "-Name : Afficher le nom de l’application et une petite description.
— Syntax : Afficher la syntaxe d’utilisation de la commande initdev.
— args : Lister les arguments et donner une description de chaque argument.
— author : Afficher le nom et l’email de l’auteur de l’application."
else

if test $# -eq 0 || test $# -gt 4
then
echo "Expected arguments, please check the help : initdev –help"
exit 1

else

if [ "$1" = "$2" -a "$#" -gt "1" -o "$1" = "$3" -a "$#" -gt "2" -o "$1" = "$4" -a "$#" -gt "3" -o "$2" = "$3" -a "$#" -gt "2" -o "$2" = "$4" -a "$#" -gt "3" -o "$3" = "$4" -a "$#" -gt "3" ]

then
echo "Vous ne pouvez pas donner deux arguments identique"

else

mkdir $1
touch $1/LICENCES
touch $1/makefile
mkdir $1/bin
mkdir $1/makfiles
mkdir $1/sources

if test $# -eq 2
then

case $2 in 
     -C) touch $1/main.c;;
     -CPP) touch $1/main.cpp;;
     -PYTHON) touch $1/main.py;;
     -GPL) echo GENERAL PUBLIC LICENSE >> $1/LICENCES
           touch $1/main;;
     -MIT) echo Licence MIT >> $1/LICENCES
           touch $1/main;;
      *) echo "Uknown arguments, please check the help : initdev –help"
           exit 1;;
esac

fi	


if test $# -eq 3
then

case $2 in 
     -C) touch $1/main.c;;
     -CPP) touch $1/main.cpp;;
     -PYTHON) touch $1/main.py;;
     -GPL) echo GENERAL PUBLIC LICENSE >> $1/LICENCES;;
     -MIT) echo Licence MIT >> $1/LICENCES;;
     -git) echo "You must set project type, please check the help : initdev –help";;
     *) echo "Uknown arguments, please check the help : initdev –help"
           exit 1;;
esac

case $3 in
     -C) touch $1/main.c;;
     -CPP) touch $1/main.cpp;;
     -PYTHON) touch $1/main.py;;
     -GPL) echo GENERAL PUBLIC LICENSE >> $1/LICENCES if test $2 != -git then touch $1/main fi;;
     -MIT) echo Licence MIT >> $1/LICENCES if test $2 != -git then touch $1/main fi;;
     -git) git init $1 if test $2 != -GPL && $2 != -MIT then touch $1/main fi;;
     *) echo "Uknown arguments, please check the help : initdev –help"
           exit 1;;
esac


case $4 in 
     -C) touch $1/main.c;;
     -CPP) touch $1/main.cpp;;
     -PYTHON) touch $1/main.py;;
     -GPL) echo GENERAL PUBLIC LICENSE >> $1/LICENCES;;
     -MIT) echo Licence MIT >> $1/LICENCES;;
      -git) git init $1;;
      *) echo "Uknown arguments, please check the help : initdev –help"
           exit 1;;
esac

fi




exit 0

fi
fi
fi
