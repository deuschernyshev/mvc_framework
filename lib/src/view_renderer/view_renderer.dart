import 'dart:io';

final class ViewRenderer {
  ViewRenderer._();

  static Future<String> render(String path, {Map<String, dynamic>? params}) async {
    return File(path).readAsString();
  }
}
