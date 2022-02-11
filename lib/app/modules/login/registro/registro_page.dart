import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gestor/app/shared/components/dark_button_icon.dart';
import 'package:gestor/app/shared/theme/color_scheme.dart';
import 'registro_controller.dart';

class RegistroPage extends StatefulWidget {
  final String title;
  const RegistroPage({Key key, this.title = "Registro"}) : super(key: key);

  @override
  _RegistroPageState createState() => _RegistroPageState();
}

class _RegistroPageState extends ModularState<RegistroPage, RegistroController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        //decoration: BoxDecoration(gradient: AppColorScheme.backgroundGradient),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/img_fundo_registro.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: SingleChildScrollView(
              child: _body(context),
            ),
          ),
        ),
      ),
    );
  }

  _body(BuildContext context) {
    //ScreenUtil.init(context, width: 750, height: 1334, allowFontScaling: true);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(bottom: 1),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12, offset: Offset(0.0, 15.0), blurRadius: 15.0),
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0.0, -10.0),
                      blurRadius: 10.0),
                ]),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image.asset(
                      "assets/img/zartoo_blue_logo.png",
                      scale: 15,
                    ),
                  ),
                  TextField(
                    controller: controller.cnpjController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: "CNPJ",
                        hintText: "Digite seu usuário",
                        prefixIcon: Icon(Icons.business),
                        hintStyle: TextStyle(fontSize: 14)),
                  ),
                  TextField(
                    controller: controller.dispositivoController,
                    keyboardType: TextInputType.text,
                    obscureText: false,
                    decoration: InputDecoration(
                        labelText: "ID do dispositivo",
                        hintText: "Digite seu id",
                        prefixIcon: Icon(Icons.vpn_key),
                        hintStyle: TextStyle(fontSize: 14)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [CircularProgressIndicator(), Text('  processando...')],
                  )),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                        width: double.infinity,
                        height: 50,
                        child: DkButtonIcon(
                            "REGISTRAR",
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                            color: AppColorScheme.backgroundGradientEnd,
                            onPressed: () async {
                          bool r = await controller.fillConexoes();
                          if (r) Modular.to.pop(true);
                        })),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'www.zartoo.com.br',
              style: TextStyle(
                fontFamily: "Poppins-Medium",
                letterSpacing: .6,
                color: AppColorScheme.primaryColor,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget processaRegistro() {}
}
