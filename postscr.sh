#!/bin/sh
LD_LIBRARY_PATH=/usr/local/pgsql/lib
export LD_LIBRARY_PATH

PATH=/usr/local/pgsql/bin:$PATH
export PATH

mkdir /usr/local/pgsql/data #due to mkdir errors.
#chown postgres /usr/local/pgsql/data

cd /usr/local/pgsql/bin/

#/usr/local/pgsql/bin/pg_ctl -D /usr/local/pgsql/data -l logfile start
/usr/local/pgsql/bin/initdb --debug -D /usr/local/pgsql/data -E UNICODE --locale=C
