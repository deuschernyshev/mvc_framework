import 'package:mvc_framework/mvc_framework.dart';
import 'package:mvc_framework/src/config/config.dart';

final class Runner {
  final Config config;

  Runner({
    required this.config,
  });

  Future<void> runServer() async {
    final cascade = Cascade()
        .add(createStaticHandler(config.staticPath))
        .add((request) => RequestHandler.handleRequest(request, config));

    const pipeline = Pipeline();

    final handler = pipeline.addMiddleware(logRequests()).addHandler(cascade.handler);

    final server = await serve(
      handler,
      config.host,
      config.port,
    );

    server.autoCompress = true;

    print('Serving at http://${server.address.host}:${server.port}');
  }
}
