import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gestor/app/modules/login/login_controller.dart';
import 'package:gestor/app/shared/components/dark_button_icon.dart';
import 'package:gestor/app/shared/db/my_database_helper.dart';
import 'package:gestor/app/shared/models/conexao.dart';
import 'package:gestor/app/shared/theme/color_scheme.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

// class _LoginPageState extends State<LoginPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Column(
//         children: <Widget>[],
//       ),
//     );
//   }
// }

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  String dropdownValue = 'One fffff';
  @override
  Widget build(BuildContext context) {
    controller.checkConexao();
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: AppColorScheme.backgroundGradient),
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage("assets/img/img_fundo_login.png"),
        //     fit: BoxFit.cover,
        //   ),
        // ),
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

    return Form(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                "assets/img/zartoo_white_logo.png",
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(bottom: 1),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0.0, 15.0),
                        blurRadius: 15.0),
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0.0, -10.0),
                        blurRadius: 10.0),
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: "Usuário",
                          hintText: "Digite seu usuário",
                          prefixIcon: Icon(Icons.person),
                          hintStyle: TextStyle(fontSize: 14)),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "Senha",
                          hintText: "Digite sua senha",
                          prefixIcon: Icon(Icons.vpn_key),
                          hintStyle: TextStyle(fontSize: 14)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black38,
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Row(
                          children: [
                            Icon(
                              Icons.wifi,
                              color: Colors.black54,
                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Observer(builder: (_) {
                                  if (controller.conexoesValues == null) {
                                    return Container();
                                  } else {
                                    var list = controller.conexoesValues.single;
                                    return DropdownButton<ConexaoModel>(
                                      isExpanded: true,
                                      value: controller.conValue,
                                      icon: Icon(Icons.arrow_downward),
                                      iconSize: 24,
                                      elevation: 16,
                                      hint: Text('Selecione uma conexão'),
                                      style: TextStyle(
                                          color: Colors.deepPurple, fontSize: 15),
                                      underline: Container(
                                        height: 0,
                                        color: Colors.deepPurpleAccent,
                                      ),
                                      onChanged: (newValue) {
                                        controller.setConexao(newValue);
                                      },
                                      items: list
                                          .map((e) => DropdownMenuItem<ConexaoModel>(
                                                value: e,
                                                child: Text(e.descricao),
                                              ))
                                          .toList(),
                                    );
                                  }
                                }),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Container(
                          width: double.infinity,
                          height: 50,
                          child: DkButtonIcon(
                              "ENTRAR",
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              ),
                              color: AppColorScheme.backgroundGradientEnd,
                              onPressed: () => onClickLogin(context))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            "Configurações ",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 14,
                              fontFamily: "Poppins-Medium",
                            ),
                          ),
                          Icon(
                            Icons.cloud_download,
                            color: Colors.black54,
                          )
                        ],
                      ),
                      onTap: () => Modular.link.pushNamed('/registro'),
                    )
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
      ),
    );
  }

  onClickLogin(BuildContext context) {
    Modular.to.pushReplacementNamed('/home');
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (BuildContext context) {
    //     return PrincipalPage(); //DateAndTimePickerDemo();
    //   }),
    // );
  }
}
