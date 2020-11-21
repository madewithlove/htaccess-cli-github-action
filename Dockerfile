FROM composer:1.9

LABEL "repository"="https://github.com/madewithlove/htaccess-cli-github-action"
LABEL "homepage"="https://github.com/madewithlovehtaccess-cli-github-action"
LABEL "maintainer"="Wouter Sioen <wouter@madewithlove.be>"

RUN composer global require --no-progress madewithlove/htaccess-cli

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
