import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  final bool isLogin;

  const Labels({
    Key key,
    @required this.isLogin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: isLogin
          ? createLabels(
              '¿No tienes cuenta?',
              'Crea una ahora',
              () {
                Navigator.pushReplacementNamed(context, 'register');
              },
            )
          : createLabels(
              '¿Ya tienes cuenta?',
              'Ingresar ahora',
              () {
                Navigator.pushReplacementNamed(context, 'login');
              },
            ),
    );
  }

  Widget createLabels(String askText, String actionText, Function onTap) {
    return Column(
      children: [
        Text(
          askText,
          style: TextStyle(
              color: Colors.black54, fontSize: 15, fontWeight: FontWeight.w300),
        ),
        SizedBox(height: 10),
        GestureDetector(
          onTap: onTap,
          child: Text(
            actionText,
            style: TextStyle(
                color: Colors.blue[600],
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
