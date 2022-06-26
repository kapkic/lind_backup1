#!/bin/bash
export LC_ALL=C
/usr/local/pgsql/bin/initdb --no-sync --locale=C --debug -D /usr/local/pgsql/data -U lind
