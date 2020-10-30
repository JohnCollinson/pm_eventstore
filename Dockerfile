ARG source_version=20.6.0-buster-slim

FROM eventstore/eventstore:$source_version
USER root
RUN mkdir -p /data/eventsdb
RUN chown -R eventstore:eventstore /data/eventsdb
USER eventstore
