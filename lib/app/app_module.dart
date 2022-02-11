import 'package:gestor/app/custom_dio/custom_dio.dart';

import 'shared/repositories/conexao_repository.dart';
import 'package:gestor/app/shared/db/my_database_helper.dart';
import 'package:gestor/app/modules/login/login_module.dart';
import 'package:gestor/app/modules/splash/splash_module.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:gestor/app/app_widget.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        $AppController,
        $ConexaoRepository,
        Bind((i) => CustomDio()),
        Bind((i) => MyDataBaseHelper.instance),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: SplashModule()),
        ModularRouter('/login',
            module: LoginModule(), transition: TransitionType.leftToRight),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
