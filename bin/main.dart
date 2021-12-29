import 'package:angel_framework/angel_framework.dart';
import 'package:angel_framework/http.dart';
import 'dart:io' show Platform;

main() async {
  Angel app = Angel();
  var http = AngelHttp(app);
  setupRoutes(app);
  print("Setup of server on 3000 done");
  await http.startServer('0.0.0.0', 3000);
}

void setupRoutes(Angel app) {
  app.get('/',
      (req, res) => 'Hello World from ${Platform.environment['SERVER']}!!');
}
