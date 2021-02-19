import 'package:OlaMundo/appController.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';
import 'loginPage.dart';

class AppWidget extends StatelessWidget {
  @override

  


  Widget build(BuildContext context) {
    return AnimatedBuilder(
          animation: AppController.instance,
          builder: (context, child) {
            return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.red, 
          brightness: AppController.instance.darkTheme ? Brightness.dark : Brightness.light
        ),
        initialRoute: '/',
        routes: {
          '/':(contex) => LoginPage(),
          '/home' : (context) => HomePage(),
        },
      );
            },
          
         
    );
  }
}
