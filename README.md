# change-hostname
#supported by Alt Server 10.2<br>
#change hostname (name computer) in the three file<br>
	#/etc/hostname (if is not empty)<br>
	#/etc/sysconfig/network<br>
	#/proc/sys/kernel/hostname<br>
#after rename hostname, you need reload PC     shutdown -r now<br>

# Запуск скрипта change-hostname.sh:<br>
bash change-hostname.sh ИМЯ КОМПЬЮТЕРА
