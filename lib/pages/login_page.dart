import 'package:api_dezzer/pages/musica_page.dart';
import 'package:api_dezzer/services/auth_service.dart';
import 'package:api_dezzer/widgets/wid_button.dart';
import 'package:api_dezzer/widgets/wid_input.dart';
//import 'package:api_dezzer/widgets/wid_label.dart';
import 'package:api_dezzer/widgets/wid_logo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(40, 40, 40, 1),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
          child: Container(
            //Toda la pantalla
            height: MediaQuery.of(context).size.height * .9,
            child: Column(
              children: [
                _Form(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Form extends StatefulWidget {
  _Form({Key? key}) : super(key: key);

  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context, listen: false);
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: [
          WidInput(
              KeyboradType: TextInputType.text,
              icono: Icons.lock_outline,
              placeHolder: 'Correo',
              isPassword: false,
              textController: emailCtrl),
          WidInput(
              KeyboradType: TextInputType.text,
              icono: Icons.lock_outline,
              placeHolder: 'Contraseña',
              isPassword: true,
              textController: passCtrl),
          WidButton(texto: 'Ingresar', onPressed: 
         
          
               authService.autenticando
                ? () => {}
                : () async {
                    FocusScope.of(context).unfocus();
                    final loginRes =
                        await authService.login(emailCtrl.text, passCtrl.text);
                    if (loginRes) {
                      //Navigator.push(context, MaterialPageRoute(builder: (context) => MusicaState()) );
                    } else {
                      //Mostrar alerta
                      /*mostrarAlerta(context, 'Error en el login',
                          'Credemnciales incorrectas');*/
                   }
                  },
              )
        ],
      ),
    );
  }
}
