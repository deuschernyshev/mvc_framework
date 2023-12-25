import 'package:shelf/shelf.dart';

abstract base class Controller {
  Future<Response> get(Request request) async {
    return Response(405);
  }
  
  Future<Response> post(Request request) async {
    return Response(405);
  }

  Future<Response> patch(Request request) async {
    return Response(405);
  }

  Future<Response> delete(Request request) async {
    return Response(405);
  }
}
