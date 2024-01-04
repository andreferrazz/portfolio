FROM jitesoft/lighttpd:1.4.73

COPY ./src/ /var/www/html

COPY ./lighttpd.conf /etc/lighttpd/conf.d/000-mime.conf

EXPOSE 80

CMD ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]

