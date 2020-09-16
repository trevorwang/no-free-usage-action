FROM google/dart:2.9

COPY bin /bin
COPY lib /lib
COPY pubspec.yaml /pubspec.yaml
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]