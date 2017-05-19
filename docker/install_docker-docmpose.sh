#!/usr/bin/env bash
if $(docker-compose -v | grep 'command not found')
then
	installDockerCompose
else
	echo 'docker-composes already exist'
fi

installDockerCompose() {
	curl -L https://github.com/docker/compose/releases/download/1.13.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
	path=/usr/local/bin
	if [ ! $(echo $PATH | grep  $path) ]
	then
		path=/usr/local
	fi
	echo "docker-compose is installed to $path"
	sudo chmod +x ${path}/docker-compose
}


