#!/bin/sh

# make sure script uses correct environment settings for sqlplus
source ~/.profile

# run sqlplus, execute the script, then get the error list and exit
sqlplus $1 << EOF
$2
@_show_errors.sql
exit;
EOF