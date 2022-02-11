import 'package:gestor/app/modules/login/registro/registro_page.dart';

import 'registro/registro_controller.dart';
import 'login_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'login_page.dart';

class LoginModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $RegistroController,
        $LoginController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => LoginPage()),
        ModularRouter(
          '/registro',
          child: (_, args) => RegistroPage(),
          transition: TransitionType.rightToLeftWithFade,
        ),
      ];

  static Inject get to => Inject<LoginModule>.of();
}
