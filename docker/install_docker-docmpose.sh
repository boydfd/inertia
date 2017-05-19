#!/usr/bin/env bash
installDockerCompose() {
	path=/usr/local/bin
	if [ ! $(echo $PATH | grep  $path) ]
	then
		path=/usr/local/bin
	fi
	curl -L https://github.com/docker/compose/releases/download/1.13.0/docker-compose-`uname -s`-`uname -m` > ${path}/docker-compose
	echo "docker-compose is installed to $path"
	chmod +x ${path}/docker-compose
}

if [ "$(docker-compose -v 2>&1 | grep 'command not found')" ]
then
	installDockerCompose
else
	echo 'docker-composes already exist'
fi


