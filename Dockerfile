FROM ghcr.io/patsec/ot-sim/ot-sim:main

RUN curl -O --output-dir /tmp https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-8.16.1-amd64.deb \
  && dpkg -i /tmp/packetbeat-8.16.1-amd64.deb

COPY ./configs/elasticsearch/packetbeat.yml /etc/packetbeat/packetbeat.yml
RUN chown root:root /etc/packetbeat/packetbeat.yml
COPY ./scripts/start-packetbeat.sh /start-packetbeat.sh
RUN chmod +x /start-packetbeat.sh
COPY ./scripts/packetbeat-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["ot-sim-cpu-module", "/etc/ot-sim/config.xml"]
