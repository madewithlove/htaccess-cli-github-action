FROM composer:1.9

LABEL "repository"="https://github.com/staticred/htaccess-cli-github-action"
LABEL "homepage"="https://github.com/staticred/htaccess-cli-github-action"
LABEL "maintainer"="Wouter Sioen <wouter@madewithlove.be>"

RUN composer global require --no-progress staticred/htaccess-cli

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
