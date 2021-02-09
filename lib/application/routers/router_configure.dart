import 'package:dw_desafio_1/application/routers/i_router_configure.dart';
import 'package:dw_desafio_1/modules/menus/menus_router.dart';
import 'package:shelf_router/shelf_router.dart';

//Router
class RouterConfigure {
  final Router _router;
  final List<IRouterConfigure> routers = [
    MenusRouter(),
  ];

  RouterConfigure(this._router);

  void configure() => routers.forEach((r) => r.configure(_router));
}
