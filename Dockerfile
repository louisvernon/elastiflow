FROM sebp/elk:600

WORKDIR ${LOGSTASH_HOME}
RUN gosu logstash bin/logstash-plugin install logstash-filter-translate
RUN gosu logstash bin/logstash-plugin install logstash-filter-cidr
