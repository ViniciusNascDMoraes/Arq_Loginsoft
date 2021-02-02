import 'package:flutter/material.dart';

main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Center(
       child: Text('Fluterando',
       textDirection: TextDirection.ltr,
       style: TextStyle(color: Colors.green, fontSize: 10)),
        )
     )
  }
}
