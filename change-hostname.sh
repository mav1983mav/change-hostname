#!/bin/bash
#
#supported by Alt Server 10.2
#change hostname (name computer) in the three place
	#/etc/hostname (if is not empty)
	#/etc/sysconfig/network
	#/proc/sys/kernel/hostname

place1="/etc/hostname"
place2="/etc/sysconfig/network"
place3="/proc/sys/kernel/hostname"

nametest=$(cat $place1)
newhostname=$1
if [ $nametest == $newhostname ]; then
	echo "Это имя компьютера уже установлено"
	else


	if [ -f $place1 ]; then
		echo "Файл $place1 есть, изменяю имя компьютера: $newhostname"
		echo $newhostname > $place1
	else
		echo "Файла $place1 нет, создаю файл и задаю новое имя компьютера: $newhostname"
		touch $place1 && chmod 644 $place1 && echo $newhostname > $place1
	fi

        if [ -f $place2 ]; then
		namesearch="HOSTNAME=$nametest"
                echo "Файл $place2 есть, изменяю имя компьютера: $newhostname"
                sed -i "s/$namesearch/HOSTNAME=$newhostname/" $place2
        else
                echo "Файла $place2 нет, создаю файл и задаю новое имя компьютера: $newhostname"
                #touch $place2 && chmod 644 $place2 && echo $newhostname > $place2
        fi


        if [ -f $place3 ]; then
                echo "Файл $place3 есть, изменяю имя компьютера: $newhostname"
                echo $newhostname > $place3
        else
                echo "Файла $place3 нет, создаю файл и задаю новое имя компьютера: $newhostname"
                touch $place3 && chmod 644 $place3 && echo $newhostname > $place3
        fi


fi
place11=""
place21=""
place31=""