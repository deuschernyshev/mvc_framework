import 'package:mvc_framework/mvc_framework.dart';

import '../main.dart';

final class HtmlController extends Controller {
  @override
  Future<Response> get(Request request) async {
    final path = '${config.rootDir}/views/index.html';
    final html = await ViewRenderer.render(path);
    
    final headers = {
      'Content-Type': 'text/html',
    };

    final response = Response.ok(
      html,
      headers: headers,
    );

    return response;
  }
}
