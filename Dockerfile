FROM nginx:stable

# Remove default configuration from Nginx
RUN rm /etc/nginx/conf.d/default.conf

# Check if local
#ARG configfilename

# Overwrite the NGINX conf
COPY nginx.conf /etc/nginx/conf.d/
#COPY "$configfilename" /etc/nginx/conf.d/
