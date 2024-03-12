import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text("Atividade "),
                Text("Avaliativa"),
              ],
            ),
            Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Nome: Cayro Ricardo Lucyrio de Lima"),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Email: cayro.lima@etec.sp.gov.br"),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [Text("2H3"), Text("Matão")],
                ),
                Text("2024")
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Random {
  nextInt(int i) {}
}

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

void main() {
  runApp((const Aplicacao()));
}
