ARG CONTAINER=ghcr.io/freifunk-gluon/gluon-build
ARG VERSION=main
FROM $CONTAINER:$VERSION

RUN mkdir -p /gluon /gluon/site-repo /gluon/gluon-repo \
	&& chmod 0755 /gluon /gluon/site-repo /gluon/gluon-repo

COPY --chmod=0755 entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
