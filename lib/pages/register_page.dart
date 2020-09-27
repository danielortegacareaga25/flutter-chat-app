import 'package:chat_app/widgets/buttonBlue_custom.dart';
import 'package:chat_app/widgets/input_custom.dart';
import 'package:chat_app/widgets/label_custom.dart';
import 'package:chat_app/widgets/logo_custom.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xffF2F2F2F2),
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Logo(
                    titulo: 'Registro',
                  ),
                  _Form(),
                  Labels(
                    ruta: 'login',
                    labelUno: '¿Ya tienes cuenta?',
                    labelDos: 'Ingresa Ya',
                  ),
                  Text('Terminos y condiciones de uso',
                      style: TextStyle(fontWeight: FontWeight.w200))
                ],
              ),
            ),
          )),
    );
  }
}

class _Form extends StatefulWidget {
  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {
  final nameCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          InputCustomWidget(
            icon: Icons.supervised_user_circle,
            placeholder: 'Nombre',
            keyboardType: TextInputType.emailAddress,
            textController: nameCtrl,
          ),
          SizedBox(height: 20),
          InputCustomWidget(
            icon: Icons.mail_outline,
            placeholder: 'Correo',
            keyboardType: TextInputType.emailAddress,
            textController: emailCtrl,
          ),
          SizedBox(height: 20),
          InputCustomWidget(
            icon: Icons.lock_outline,
            placeholder: 'Contraseña',
            isPassword: true,
            textController: passCtrl,
          ),
          SizedBox(
            height: 20,
          ),
          // InputCustomWidget()
          ButtonBlue(
            texto: 'Ingrese',
            onPress: () {
              print(emailCtrl.text);
              print(passCtrl.text);
              print(nameCtrl.text);
            },
          )
        ],
      ),
    );
  }
}
