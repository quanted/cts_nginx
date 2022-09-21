FROM nginx:stable

ARG config=nginx.conf

ENV APP_USER=www-data

# RUN apk update && \
# 	apk upgrade

RUN rm -rf /usr/share/nginx/html/* && \
	rm /etc/nginx/conf.d/default.conf

COPY $config /etc/nginx/conf.d/

# RUN adduser -S $APP_USER -G $APP_USER && \
# 	chown -R $APP_USER:$APP_USER /usr/share/nginx && \
#     chown -R $APP_USER:$APP_USER /var/cache/nginx && \
#     chown -R $APP_USER:$APP_USER /var/log/nginx && \
#     chown -R $APP_USER:$APP_USER /etc/nginx/conf.d

# RUN touch /var/run/nginx.pid && \
# 	chown -R $APP_USER:$APP_USER /var/run/nginx.pid

# USER $APP_USER

# CMD ["nginx", "-g", "daemon off;"]
