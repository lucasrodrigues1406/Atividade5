import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TelaInicial(),
    );
  }
}

class TelaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu Aplicativo de Rotas'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/images/nomeapp.png', // Coloque o caminho da imagem da sua logo
              width: 150.0,
              height: 150.0,
            ),
            SizedBox(height: 20.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Local de Partida',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Destino',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Rotas Disponíveis',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            // Lista de imagens representando rotas
            Image.asset(
              'assets/images/Rota_1.png',
              width: 300.0,
              height: 100.0,
            ),
            Image.asset(
              'assets/images/Rota_2.png',
              width: 100.0,
              height: 100.0,
            ),
            Image.asset(
              'assets/images/Rota_3.png',
              width: 100.0,
              height: 100.0,
            ),
          ],
        ),
      ),
    );
  }
}

class RouteImage extends StatelessWidget {
  final String imagePath;

  RouteImage({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      child: Image.asset(
        imagePath,
        width: 200.0,
        height: 150.0,
        fit: BoxFit.cover,
      ),
    );
  }
}
