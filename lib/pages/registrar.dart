import 'package:flutter/material.dart';
import 'package:provags/pages/telainicial.dart';

void main() {
  runApp(RegisterPage());
}

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: RegisterScreen(),
      ),
    );
  }
}

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _termsAgreed = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Criar Conta",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Seja Bem Vindo",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Nome',
                ),
              ),
              SizedBox(height: 10.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
              SizedBox(height: 10.0),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Senha',
                ),
              ),
              SizedBox(height: 10.0),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Digite a senha novamente',
                ),
              ),
              SizedBox(height: 10.0),
              Row(
                children: [
                  Checkbox(
                    value: _termsAgreed,
                    onChanged: (value) {
                      setState(() {
                        _termsAgreed = value!;
                      });
                    },
                  ),
                  Text(
                      "Ao se registrar você concorda com nossos termos e condições"),
                ],
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TelaInicial()),
                  );
                },
                child: Text("Criar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
