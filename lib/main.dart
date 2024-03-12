import 'package:flutter/material.dart';

void main() => runApp(const Aplicacao());

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

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
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'KATCHAU ⚡',
          style: theme.textTheme.titleLarge?.copyWith(color: Colors.yellow),
        ),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Image.asset("lib/assets/images/cars1.jpg"),
          const Text('Nome do Filme: Carros'),
          const Row(
            children: [
              Text('Ano de Lançamento: 2006'),
              Text('Duração: 1h 36min'),
            ],
          ),
          const Text('Diretor: John Lasseter'),
          const Text('Classificação: LIVRE')
        ],
      ),
    );
  }
}
