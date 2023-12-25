import 'package:mvc_framework/src/runner/runner.dart';

import 'config/config.dart';

final config = AppConfig();

Future<void> main() async {
  final runner = Runner(config: config);

  await runner.runServer();
}
