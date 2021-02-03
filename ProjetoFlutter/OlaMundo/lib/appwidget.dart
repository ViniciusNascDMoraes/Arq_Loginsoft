import 'package:flutter/material.dart';

import 'homepage.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: HomePage(),
    );
  }
}
