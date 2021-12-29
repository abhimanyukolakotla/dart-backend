FROM dart:stable-sdk
WORKDIR /app

COPY pubspec.yaml pubspec.yaml
COPY bin bin
RUN  pub get

CMD ["sudo", "dart", "bin/main.dart"]