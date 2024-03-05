import 'dart:math';

import 'package:flutter/material.dart';

//Essa classe representa o Windget responsável
//por gerir todo o meu app
class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  //Método onde devemos indicar o que nosos widget
  //irá apresentar: como será sua composição?
  //o que ele mostra ao usuario ?

  @override
  Widget build(BuildContext context) {
    //A classe MaterialApp é uma classe que segue
    //as regras do material (marterial.io) e sabe
    //gerenciar um app como um todo

    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//Essa classe representa o widget onde vamos montar
//nossa tela
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(
            onPressed: () => setState(() {}),
            icon: const Icon(Icons.refresh),
          )
        ],
      ),
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //SizedBox vai forçar o Contariner, que está
            //dentro dele, a ter o tamanho 200x200
            caixa(),
            duascaixas(),
            trescaixas(),
            duascaixas(),
            caixa()
          ],
        ),
      ),
    );
  }
}

Widget caixa() {
  return SizedBox(
    width: 90,
    height: 90,
    child: Container(
        decoration: BoxDecoration(
          color: gerarCorAleatoria(),
        ),
        child: Center(
          child: Text(
            Random().nextInt(100).toString(),
            style: const TextStyle(color: Colors.white),
          ),
        )),
  );
}

// ignore: non_constant_identifier_names
Widget linha(List<Widget> Items) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: Items,
  );
}

Widget duascaixas() {
  return linha(
    [
      caixa(),
      caixa(),
    ],
  );
}

Widget trescaixas() {
  return linha(
    [
      caixa(),
      caixa(),
      caixa(),
    ],
  );
}

Color gerarCorAleatoria() {
  final random = Random();
  return Color.fromARGB(
      255, random.nextInt(256), random.nextInt(256), random.nextInt(256));
}

//todo projeto em dart começa com a execução
//pelo método main
void main() => runApp(const Aplicacao());
