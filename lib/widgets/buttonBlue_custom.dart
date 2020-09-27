import 'package:flutter/material.dart';

class ButtonBlue extends StatelessWidget {
  final String texto;
  final Function onPress;

  const ButtonBlue({Key key, this.texto, this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      elevation: 2,
      highlightElevation: 5,
      color: Colors.blue,
      shape: StadiumBorder(),
      onPressed: this.onPress,
      child: Container(
        width: double.infinity,
        child: Center(
          child: Text(
            this.texto,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
