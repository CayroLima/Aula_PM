import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    final num1controller = TextEditingController();
    final num2controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: num1controller,
              decoration: const InputDecoration(
                labelText: "Num1",
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
            const Text("+"),
            TextField(
              controller: num2controller,
              decoration: const InputDecoration(
                labelText: "Num2",
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => soma(
                    context,
                    num1controller.text,
                    num2controller.text,
                  ),
                  child: const Text("+"),
                ),
                ElevatedButton(
                  onPressed: () => subtrair(
                    context,
                    num1controller.text,
                    num2controller.text,
                  ),
                  child: const Text("-"),
                ),
                ElevatedButton(
                    onPressed: () => multiplicar(
                          context,
                          num1controller.text,
                          num2controller.text,
                        ),
                    child: const Text("*")),
                ElevatedButton(
                    onPressed: () => dividir(
                        context, num1controller.text, num2controller.text),
                    child: const Text("/")),
                ElevatedButton(
                  onPressed: () {
                    num1controller.text = "";
                    num2controller.text = "";
                  },
                  child: const Text("Limpar"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void soma(BuildContext context, String valor1, valor2) {
    final num1 = int.parse(valor1);
    final num2 = int.parse(valor2);
    final mensagem = "$num1 + $num2 = ${num1 + num2}";

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(mensagem),
      ),
    );
  }

  void subtrair(BuildContext context, String valor1, valor2) {
    final num1 = int.parse(valor1);
    final num2 = int.parse(valor2);
    final mensagem = "$num1 - $num2 = ${num1 - num2}";

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(mensagem),
      ),
    );
  }

  void multiplicar(BuildContext context, String valor1, valor2) {
    final num1 = int.parse(valor1);
    final num2 = int.parse(valor2);
    final mensagem = "$num1 * $num2 = ${num1 * num2}";

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(mensagem),
      ),
    );
  }

  void dividir(BuildContext context, String valor1, valor2) {
    final num1 = int.parse(valor1);
    final num2 = int.parse(valor2);
    final mensagem = "$num1 / $num2 = ${num1 / num2}";

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(mensagem),
      ),
    );
  }

  void limpa(TextEditingController num1, num2) {
    num1.text = "";
    num2.text = "";
  }
}
