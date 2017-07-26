FROM docker.elastic.co/logstash/logstash:5.4.0

# Add your logstash plugins setup here
RUN logstash-plugin install logstash-input-jdbc

# Add logstash.yml
COPY ./config/logstash.yml /usr/share/logstash/config/logstash.yml

# Add logstash.conf
COPY ./pipeline/logstash.conf /usr/share/logstash/pipeline/logstash.conf

# Add MySQL JDBC driver
COPY ./mysql-connector-java-5.1.42-bin.jar /usr/share/logstash/mysql-connector-java-5.1.42-bin.jar

# Add Elasticsearch template (settings + mappings)
COPY ./catalogtemplate.json /usr/share/logstash/catalogtemplate.json