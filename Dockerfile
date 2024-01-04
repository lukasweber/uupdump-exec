FROM debian:bookworm-slim

RUN apt-get update && apt-get install -y aria2 cabextract wimtools chntpw genisoimage

RUN mkdir -p /opt/uupdump-exec
COPY download.sh /opt/uupdump-exec/install.sh

ENTRYPOINT ["/opt/uupdump-exec/install.sh"]
