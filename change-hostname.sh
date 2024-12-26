#!/bin/bash
#
#supported by Alt Server 10.2
#change hostname (name computer) in the three file
	#/etc/hostname (if is not empty)
	#/etc/sysconfig/network
	#/proc/sys/kernel/hostname
#after rename hostname, you need reload PC     shutdown -r now


file1="/etc/hostname"
file2="/etc/sysconfig/network"
file3="/proc/sys/kernel/hostname"

curhostname=$HOSTNAME
newhostname=$1
if [ $curhostname == $newhostname ]; then
	echo "Это имя компьютера уже установлено"
	else


	if [ -f $file1 ]; then
		echo "Файл $file1 есть, изменяю имя компьютера на: $newhostname"
		echo $newhostname > $file1
	else
		echo "Файла $file1 нет" #, создаю файл и задаю новое имя компьютера: $newhostname"
		#touch $file1 && chmod 644 $file1 && echo $newhostname > $file1
	fi

        if [ -f $file2 ]; then
		namesearch="HOSTNAME=$curhostname"
                echo "Файл $file2 есть, изменяю имя компьютера на: $newhostname"
                sed -i "s/$namesearch/HOSTNAME=$newhostname/" $file2
        else
                echo "Файла $file2 нет" #, создаю файл и задаю новое имя компьютера: $newhostname"
                #touch $file2 && chmod 644 $file2 && echo $newhostname > $file2
        fi

        if [ -f $file3 ]; then
                echo "Файл $file3 есть, изменяю имя компьютера на: $newhostname"
                echo $newhostname > $file3
        else
                echo "Файла $file3 нет" #, создаю файл и задаю новое имя компьютера: $newhostname"
                #touch $file3 && chmod 644 $file3 && echo $newhostname > $file3
        fi

fi
