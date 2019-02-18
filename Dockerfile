FROM nginx
COPY default.conf /etc/nginx/conf.d/
COPY /www /usr/share/nginx/html/