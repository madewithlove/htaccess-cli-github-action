FROM composer:1.9

RUN composer global require --no-progress madewithlove/htaccess-cli

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
