FROM jitesoft/lighttpd:1.4.73

WORKDIR /var/www/html

COPY ./src/ ./
COPY ./lighttpd.conf /etc/lighttpd/conf.d/000-mime.conf

EXPOSE 80

CMD ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]

