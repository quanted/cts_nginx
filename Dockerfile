ARG DJANGO_IMAGE

FROM ${DJANGO_IMAGE} AS django-static

FROM nginx:stable-alpine3.21-slim

ARG config=nginx.conf
ENV APP_USER=www-data

RUN apk update && \
	apk upgrade

RUN rm -rf /usr/share/nginx/html/* && \
	rm /etc/nginx/conf.d/default.conf

COPY $config /etc/nginx/conf.d/

COPY --from=django-static /src/cts_app/collected_static /src/collected_static