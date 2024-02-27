import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 239, 218, 255),
      appBar: AppBar(
        title: const Text("Aula 3"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text("Sorteio"),
            Text(Random().nextInt(1000).toString(),
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    color: Color.fromARGB(
                        Random().nextInt(255),
                        Random().nextInt(255),
                        Random().nextInt(255),
                        Random().nextInt(255)),
                    fontSize: 50,
                    fontWeight: FontWeight.bold)),
            const Column(
              children: [
                Text("DORIVAL AUTOSPEÇAS"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("2H3"),
                    Text("2024"),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
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
  runApp(const Aplicacao());
}
