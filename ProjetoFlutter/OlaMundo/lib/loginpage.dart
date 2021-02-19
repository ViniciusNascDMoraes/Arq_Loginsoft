import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String usuario = '';
  String senha = '';

  Widget _body(){
    return Column(
      children: [
        SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 10,
                right: 10,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    child: Image.asset('assets/images/logo.png')
                  ),
                  Container(
                    height: 10,
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: [
                          TextField(
                            onChanged: (text) {
                              usuario = text;
                            },
                            keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Usuário',
                              )
                          ),
                          SizedBox(height: 15),
                          TextField(
                            onChanged: (text) {
                              senha = text;
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Senha',
                            )
                          ),
                          SizedBox(height: 15),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(80)
                            ), 
                            color: Colors.amber[800],
                            onPressed: () {
                              if (usuario == 'Vinicius' && senha == '123') {
                                Navigator.of(context).pushReplacementNamed('/home');
                              } else {
                                print('Usuário e/ou senha inválido(s).');
                             }
                            },
                            child: Container(
                              width: double.infinity,
                              child: Text(
                                'Entrar', 
                                textAlign: TextAlign.center,
                              )
                            ) 
                          ),
                        ],
                      ),
                    ),
                  ),
                ]
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset('assets/images/background.jpg', 
              fit: BoxFit.fill,
            )
          ),
          Container(
            color: Colors.black.withOpacity(0.1),
          ),
          _body()
        ],
      )
    );
  }
}
