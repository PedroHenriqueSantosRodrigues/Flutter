import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:terceirodia/home_page.dart';

class LoginPage extends StatefulWidget {
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    String email = ' ';
    String password = ' ';

    return Material(
      child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  onChanged: ((text) => email = text),
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.red),
                    border: OutlineInputBorder(),
                  ),
                ),
                Container(
                  height: 10,
                ),
                TextField(
                  onChanged: ((text) => password = text),
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.red),
                    border: OutlineInputBorder(),
                  ),
                ),
                Container(
                  height: 10,
                ),
                RaisedButton(
                    onPressed: () {
                      if (email == 'pedrohenrique10001@gmail.com' &&
                          password == '12345') {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ));
                      } else {
                        print('Dados Incorretos');
                      }
                    },
                    child: Text('Entrar'),
                    color: Colors.amber,
                    textColor: Colors.red)
              ],
            ),
          )),
    );
  }
}
