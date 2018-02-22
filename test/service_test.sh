#!/bin/bash -e

declare -a services=( 'couchdb', 'neo4j', 'mongodb', 'selenium', 'redis', 'rabbitmq', 'memcached', 'elasticsearch')

for service in "${services[@]}"
  do
	echo "Starting $service"
	shippable_service $service start
	
	echo "Stopping $service"
	shippable_service $service stop
done 

