FROM google/dart:2.9

COPY bin /bin
COPY lib /lib
COPY pubspec.yml /pubspec.yml
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]