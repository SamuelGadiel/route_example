import 'package:flutter/material.dart';
import 'package:route_example/first_page.dart';
import 'package:route_example/second_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      // home: FirstPage(),



      initialRoute: '/',
      routes: {
        '/': (context) => const FirstPage(),
        '/second': (context) => const SecondPage(),
      },



    );
  }
}
