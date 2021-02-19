import 'package:OlaMundo/appController.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(
                  'assets/images/perfil.png'
                  )
                ),
              accountName: Text('Vinicius N. De Moraes'), 
              accountEmail: Text('Viniciuspiracaia@hotmail.com'), 
            ),
            ListTile(
              title: Text('Inicio'),
              subtitle: Text('Inicio do App'),
              leading: Icon(Icons.home),
              onTap: () {
                
              },
            ),
            ListTile(
              title: Text('Logout'),
              subtitle: Text('Sair do App'),
              leading: Icon(Icons.home),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Pagina Inicial'),
        actions: [CustomSwitch()],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Texto'),
            CustomSwitch(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.darkTheme,
        onChanged: (value) {
          AppController.instance.changeTheme();
        });
  }
}
