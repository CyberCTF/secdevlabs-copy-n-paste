#!/bin/sh
# Places the player's flag (CTF_FLAG_MAIN, given by the launcher) in a flags table of the a1db
# database, where the login's SQL injection reaches it; without one (CI, a run by hand) the
# development flag.
dev='FLAG{dev-secdevlabs-copy-n-paste}'
flag="${CTF_FLAG_MAIN:-$dev}"
i=0; until mysql -h127.0.0.1 -uroot -proot -e 'SELECT 1' a1db >/dev/null 2>&1; do i=$((i+1)); [ $i -gt 90 ] && exit 1; sleep 2; done
mysql -h127.0.0.1 -uroot -proot a1db <<SQL
CREATE TABLE IF NOT EXISTS flags (flag VARCHAR(255));
DELETE FROM flags;
INSERT INTO flags VALUES ('$flag');
SQL
