import 'package:conversorcurso/app/components/currency_box.dart';
import 'package:conversorcurso/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController toText = TextEditingController();

  TextEditingController fromText = TextEditingController();

  HomeController homeController;

  @override
  void initState() {
    homeController = HomeController(toText: toText, fromText: fromText);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              Image.asset(
                'assets/images/icone.png',
                width: 150,
                height: 150,
              ),
              SizedBox(
                height: 70,
              ),
              CurrencyBox(
                  selectedItem: homeController.toCurrency,
                  controller: toText,
                  items: homeController.currencies,
                  onChanged: (model) {
                    setState(() {
                      homeController.toCurrency = model;
                    });
                  }),
              SizedBox(
                height: 20,
              ),
              CurrencyBox(
                  selectedItem: homeController.fromCurrency,
                  controller: fromText,
                  items: homeController.currencies,
                  onChanged: (model) {
                    setState(() {
                      homeController.fromCurrency = model;
                    });
                  }),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                color: Colors.amber[900],
                onPressed: () {
                  homeController.convert();
                },
                child: Text('Converter'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
