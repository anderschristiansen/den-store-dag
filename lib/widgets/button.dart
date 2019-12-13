import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Function onPressed;

  const Button({Key key, this.text, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: FlatButton(
        padding: EdgeInsets.all(20),
        color: Theme.of(context).buttonColor,
        onPressed: () async {
          onPressed();
          // var user = await loginMethod();
          // if (user != null) {
          //   Navigator.pushReplacementNamed(context, '/home');
          // }
        },
        child: Text(
          '$text',
          textAlign: TextAlign.center,
          style: TextStyle(color: Theme.of(context).textTheme.button.color),
        ),
      ),
    );
  }
}