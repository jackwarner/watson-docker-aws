# Watson Application server
FROM jackwarner/watson
MAINTAINER Jack Warner <jackwarner@wmalumni.com> (@warnerjack)

RUN apt-get clean && apt-get update && apt-get install -y supervisor

RUN mkdir -p /var/log/supervisor

ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# expose port
EXPOSE 80

# And start the web server
CMD ["/usr/bin/supervisord"]
