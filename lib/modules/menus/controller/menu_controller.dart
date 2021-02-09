import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

part 'menu_controller.g.dart';

//MenuController
class MenuController {
  @Route.get('/')
  Future<Response> listaPizzas(Request request) async {
    return Response.ok(jsonEncode([
      {'id': '1', 'nome': 'Moda do Chef', 'preco': '30.00'},
      {'id': '2', 'nome': 'Calabresa', 'preco': '35.00'},
      {'id': '3', 'nome': 'Mussarela', 'preco': '40.00'}
    ]));
  }

  Router get router => _$MenuControllerRouter(this);
}
