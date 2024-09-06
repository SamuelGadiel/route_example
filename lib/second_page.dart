import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  Future<Response> getMovies() async {
    // FAZER O PEDIDO AO SERVIDOR PARA OBTER OS DADOS DOS FILMES
     result = await dio.get(
      "$baseUrl$endpoint$apiKey",
      Options(validateStatus: (status) => true),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Página 2"),
      ),
      body: Container(
        child: FutureBuilder(
          initialData: getMovies(),
          builder: (context, snapshot){
            snapshot.data
            

            return Text(snapshot.data["titulodofilme"])
          }
          ),
      ),
    );
  }
}
