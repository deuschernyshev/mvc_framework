import 'package:mvc_framework/mvc_framework.dart';

abstract base class Config {
  abstract final String rootDir;
  abstract final String staticPath;
  
  final String host = 'localhost';
  final int port = 8000;

  abstract final Map<String, Controller> routes;
}
