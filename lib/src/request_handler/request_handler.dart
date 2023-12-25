import 'package:mvc_framework/mvc_framework.dart';

final class RequestHandler {
  RequestHandler._();

  static Future<Response> handleRequest(Request request, Config config) async {
    final path = request.requestedUri.path;
    final controller = config.routes[path];

    if (controller == null) {
      return Future.value(Response(404));
    }

    return switch (request.method.toUpperCase()) {
      'GET' => controller.get(request),
      'POST' => controller.post(request),
      'PATCH' => controller.patch(request),
      'DELETE' => controller.delete(request),
      _ => Future.value(Response(405)),
    };
  }
}
