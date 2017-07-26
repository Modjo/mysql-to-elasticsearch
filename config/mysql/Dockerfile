#++++++++++++++++++++++++++++++++++++++
# MySQL Docker container
#++++++++++++++++++++++++++++++++++++++
#
# Official images:
#
#   mysql   - official MySQL from Oracle
#             https://hub.docker.com/r/library/mysql/
#
#++++++++++++++++++++++++++++++++++++++

FROM mysql:5.7.18

COPY ./mysql-docker.cnf /etc/mysql/conf.d/z99-docker.cnf
COPY ./dbdata/mydatabase.sql /docker-entrypoint-initdb.d/mydatabase.sql