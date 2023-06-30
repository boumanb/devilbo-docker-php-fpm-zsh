#!/bin/sh
set -e
set -u
set -o pipefail

VERSIONS="7.4 8.0 8.1"

for VERSION in $VERSIONS
do
    make build VERSION=$VERSION FLAVOUR=devilbox-docker-php-fpm-personal IMAGE=billybouman/devilbox-docker-php-fpm-personal TAG=$VERSION FORCE_TAG=true
done

docker push --all-tags billybouman/devilbox-docker-php-fpm-personal