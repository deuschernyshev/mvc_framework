import 'package:mvc_framework/mvc_framework.dart';
import 'package:mvc_framework/src/config/config.dart';

import '../controllers/html.dart';
import '../controllers/json.dart';

final class AppConfig extends Config {
  @override
  String get rootDir => '/Users/yegorchernyshev/Projects/Dart/mvc_framework/example';
  
  @override
  String get staticPath => '$rootDir/static';
  
  @override
  Map<String, Controller> get routes => {
    '/': HtmlController(),
    '/json': JsonController(),
  };
}
