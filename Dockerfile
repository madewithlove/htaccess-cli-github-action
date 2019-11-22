FROM composer:1.9

LABEL "repository"="https://github.com/madewithlove/htaccess-cli-google-action"
LABEL "homepage"="https://github.com/madewithlove/htaccess-cli-google-action"
LABEL "maintainer"="Wouter Sioen <wouter@madewithlove.be>"

RUN composer global require --no-progress madewithlove/htaccess-cli

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
