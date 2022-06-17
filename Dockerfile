FROM debian:jessie
RUN apt-get update && apt-get install -y netcat

# in order to have psql
RUN apt-get install -y postgresql-client

ADD ./init_schema.sql /
ADD ./start.sh /start.sh

CMD ["/start.sh"]