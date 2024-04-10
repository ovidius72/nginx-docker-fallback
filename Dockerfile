FROM nginx

ENV DEBIAN_FRONTEND noninteractive
ENV TZ Europe/Rome

RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
	apache2-utils \
	&& rm -rf /var/lib/apt/lists/*

COPY nginx.default.conf /etc/nginx/nginx.default.conf

COPY next /usr/share/nginx/html/next
COPY jekyll /usr/share/nginx/html/jekyll

COPY docker-entrypoint.sh /tmp/

CMD ["/bin/bash", "/tmp/docker-entrypoint.sh"]
