cd /home/lind/lind_project/src/scripts
./copy_all.sh

#insta-install


lindfs cp /home/lind/lind_project/hosts /etc/hosts
lindfs cp /etc/resolv.conf /etc/resolv.conf
lindfs cp /etc/nsswitch.conf /etc/nsswitch.conf
lindfs cp /etc/host.conf /etc/host.conf
lindfs cp /home/lind/lind_project/tests/applications/bash/bash /bin/sh
lindfs cp /home/lind/lind_project/tmp/usr/local/pgsql /usr/local/pgsql
lindfs cp /home/lind/lind_project/pyscr.sh /pyscr.sh
lindfs cp /home/lind/lind_project/postscr.sh /postscr.sh
lindfs cp /home/lind/lind_project/helflask.py /hello.py
lindfs cp /usr/share/zoneinfo/America/New_York /etc/localtime

cd /home/lind/lind_project
make install;
