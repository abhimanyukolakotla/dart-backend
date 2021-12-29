FROM dart:stable-sdk
WORKDIR /app

COPY pubspec.yaml pubspec.yaml
COPY bin bin
RUN /usr/lib/dart/bin/pub get

CMD ["/usr/lib/dart/bin/dart", "bin/main.dart"]