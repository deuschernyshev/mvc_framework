import 'dart:convert';

import 'package:mvc_framework/mvc_framework.dart';

final class JsonController extends Controller {
  @override
  Future<Response> get(Request request) async {
    final Map<String, dynamic> data = {
      'name': 'Yegor',
      'age': 26,
      'married': true,
    };

    final response = Response.ok(jsonEncode(data));

    return response;
  }
}
