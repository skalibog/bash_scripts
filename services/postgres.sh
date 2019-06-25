#!/bin/bash
docker run \
	--name postgres \
	-itd \
	--restart unless-stopped \
	--publish 5432:5432 \
	--volume /srv/docker/postgresql/data:/var/lib/postgresql/data \
	--volume /run/postgresql:/run/postgresql \
	--net=host \
        postgres
