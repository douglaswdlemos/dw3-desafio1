import 'package:dw_desafio_1/application/routers/i_router_configure.dart';
import 'package:shelf_router/src/router.dart';

import 'controller/menu_controller.dart';

class MenusRouter implements IRouterConfigure {
  @override
  void configure(Router router) {
    router.mount('/menu/', MenuController().router);
  }
}
