import 'package:flutter/material.dart';

void main() => runApp(const aplicacao());

class aplicacao extends StatelessWidget {
  const aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Atividade"),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Nome: Cayro Ricardo Lucyriro de Lima"),
                  Text("Email: cayro.lima@etec.gov.br"),
                  Text("Idade: 26 Anos")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("2H3"),
                  Text("2024"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
