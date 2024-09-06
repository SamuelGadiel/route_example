import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Página 1"),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            child: Text("Ir para a página 2"),
            onPressed: () {
              Navigator.of(context).pushNamed('/second');
            },
          ),
        ),
      ),
    );
  }
}
