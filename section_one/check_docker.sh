#!/bin/bash
#

if ! type "docker" > /dev/null; then
	# assume we run in home. And have the right access(we run as sudo)
	curl -fsSL https://get.docker.com -o get-docker.sh
	sh get-docker.sh
fi

docker run --rm --name tdcx_test -v /var/www/html:/usr/share/nginx/html:ro -d nginx
echo $?
while [ $? != 0 ]
do
	echo "nginx is crashing. Restarting"
	docker run --rm --name tdcx_test -v /var/www/html:/usr/share/nginx/html:ro -d nginx
done

echo "it's up"
