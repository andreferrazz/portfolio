FROM jitesoft/lighttpd:1.4.73

WORKDIR /var/www/html

COPY ./src/ ./

EXPOSE 80

CMD ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]

