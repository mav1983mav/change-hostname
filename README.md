# change-hostname
#supported by Alt Server 10.2
#change hostname (name computer) in the three file
	#/etc/hostname (if is not empty)
	#/etc/sysconfig/network
	#/proc/sys/kernel/hostname
#after rename hostname, you need reload PC     shutdown -r now

Запуск скрипта change-hostname.sh:
bash change-hostname.sh ИМЯ КОМПЬЮТЕРА
