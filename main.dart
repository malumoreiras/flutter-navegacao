import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(MaterialApp(home: Login()));
  }

class Login extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color(0xFFF5F5F5),


      appBar: AppBar(
        title: Text(
          'Tela de Login',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF873600),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
           
              SizedBox(height: 20),

              Text(
                'Acesso ao Sistema',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 20.0),

              // Campo de e-mail
              TextField(
                decoration: InputDecoration(
                  labelText: 'E-mail',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 24.0),

              // Campo de senha
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 24.0),

              // Botão Entrar
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TelaInicial()),
                  );

                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFE67E22),
                  padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                  textStyle: TextStyle(fontSize: 18.0),
                ),
                child: Text(
                  'Entrar',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
    );
  }
}