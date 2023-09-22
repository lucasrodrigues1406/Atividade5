import 'package:flutter/material.dart';
import 'login.dart';
import 'registrar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Inicial',
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo do aplicativo
            Container(
              width: 900.0,
              height: 100.0,
              // Aqui você pode adicionar sua imagem de logo
              child: Image.asset('assets/images/logoapp.png'),
            ),
            SizedBox(height: 20.0),
            Container(
              width: 500.0,
              height: 100.0,
              // Aqui você pode adicionar sua imagem de logo
              child: Image.asset('assets/images/nomeapp.png'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Navegue para a tela de login usando a rota nomeada.
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(16.0),
                minimumSize: Size(200, 50),
              ),
              child: Text('Entrar'),
            ),
            SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Primeiro acesso?'),
                TextButton(
                  onPressed: () {
                    // Navegue para a tela de registro usando a rota nomeada.
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterPage()),
                    );
                  },
                  child: Text('Registre-se'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
