import 'package:flutter_modular/flutter_modular.dart';
import 'package:gestor/app/modules/splash/splash_page.dart';

class SplashModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', child: (_, args) => SplashPage()),
        // Router('/login', module: LoginModule()),
      ];

  static Inject get to => Inject<SplashModule>.of();
}
