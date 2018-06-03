FROM consul:latest

RUN mkdir -p /consul/certs
ADD ./config /consul/config
VOLUME [ "/consul/certs" ]

COPY docker-entrypoint.sh /usr/local/bin/start-consul.sh
RUN chmod +x /usr/local/bin/start-consul.sh
ENTRYPOINT [ "start-consul.sh" ]

