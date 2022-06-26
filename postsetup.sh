#!/bin/bash

lindfs cp /home/lind/lind_project/lind/lindenv/sdk/toolchain/linux_x86_glibc/x86_64-nacl/lib/ lib/

lindfs cp /home/lind/lind_project/tests/applications/bash/bash /bin/bash
lindfs cp /home/lind/lind_project/tests/applications/bash/bash /bin/sh

lindfs cp /home/lind/lind_project/tmp/usr/local/pgsql /usr/local/pgsql

echo "Copying Postgres"
lindfs cp /home/lind/lind_project/tests/applications/postgres/src/interfaces/libpq/libpq.so.5.13 /lib/glibc/libpq.so.5

echo "Copying Support files"

cp /etc/hosts /home/lind/lind_project/hosts
echo -e "127.0.0.1\tLind" >> /home/lind/lind_project/hosts
lindfs cp /home/lind/lind_project/hosts /etc/hosts # Adjusted as we also need Lind's ip as 127.0.0.1 in the list.
rm /home/lind/lind_project/hosts

lindfs cp /etc/resolv.conf /etc/resolv.conf
lindfs cp /etc/nsswitch.conf /etc/nsswitch.conf
lindfs cp /etc/host.conf /etc/host.conf
lindfs cp /usr/share/zoneinfo/America/New_York /etc/localtime # As we don't have /etc/localtime default in lind.

lindfs cp /home/lind/lind_project/src/scripts/includes/passwd /etc/passwd
lindfs mkdir tmp
lindfs cp /home/lind/lind_project/init-postgres.sh init-postgres.sh
lindfs cp /home/lind/lind_project/run-postgres.sh run-postgres.sh
