import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gestor/app/modules/splash/shared/components/splash_logo.dart';
import 'package:gestor/app/shared/theme/color_scheme.dart';

class SplashPage extends StatefulWidget {
  final String title;
  const SplashPage({Key key, this.title = "Splash"}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3))
        .then((v) => Modular.to.pushReplacementNamed('/login'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: AppColorScheme.backgroundGradient),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            //Imagem do Zartoo
            SplashLogo(),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Center(
                child: SizedBox(
                  child: null, //CircularProgressIndicator(),
                  width: 60,
                  height: 60,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
