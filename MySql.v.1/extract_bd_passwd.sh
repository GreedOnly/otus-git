#!/bin/bash
if [ -e /home/vagrant/.my.cnf ]
then
# попытка дать скрипту немного иденпотентности.
echo "Как ни странно файл /home/vagrant/.my.cnf существует."
else
# иначе — создать файл и сделать в нем новую запись
cat <<EOF>> .my.cnf
[client]
user=root
password="`sudo grep 'temporary password' /var/log/mysqld.log | cut -d: -f4,5,6,7,8,9,10,11,12 | sed s/' '//g`"
EOF
fi