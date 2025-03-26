#!/bin/bash
#

if ! type "docker" > /dev/null; then
	# assume we run in home. And have the right access(we run as sudo)
	curl -fsSL https://get.docker.com -o get-docker.sh
	sh get-docker.sh
fi

# assume only one nginx instance
CHECK_NGINX=`docker ps|grep nginx | awk '{ print $1 }'
CRASHING=0

if [ -z $CHECK_NGINX ]; then
    docker run --rm --name tdcx_test -v /var/www/html:/usr/share/nginx/html:ro -d nginx
    CRASHING=$?
fi

while [ $CRASHING != 0 ]
do
	echo "nginx is crashing. Restarting"
	docker run --rm --name tdcx_test -v /var/www/html:/usr/share/nginx/html:ro -d nginx
	CRASHING=$?
done

echo "it's up"
