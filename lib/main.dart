import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

void main() => runApp(const Aplicacao());

final formatter = NumberFormat.currency(
  locale: "pt_BR",
  symbol: "R\$",
);

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
    final valorController = TextEditingController();
    final taxaController = TextEditingController();
    final pagtoController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Calculadora de Juros 🤷‍♂️ 🫠')),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
                controller: valorController,
                decoration: const InputDecoration(
                  labelText: "Valor",
                ),
                keyboardType: TextInputType.number,
                inputFormatters: decimalNumber()),
            TextField(
                controller: taxaController,
                decoration: const InputDecoration(
                  labelText: "Taxa de juros",
                ),
                keyboardType: TextInputType.number,
                inputFormatters: decimalNumber()),
            TextField(
              controller: pagtoController,
              decoration: const InputDecoration(
                labelText: "Quantidade de pagamento",
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => calc(context, valorController.text,
                      taxaController.text, pagtoController.text),
                  child: const Text("Calcular"),
                ),
                ElevatedButton(
                    onPressed: () {
                      valorController.text = "";
                      taxaController.text = "";
                      pagtoController.text = "";
                    },
                    child: const Text('Limpar'))
              ],
            )
          ],
        ),
      ),
    );
  }

  void calc(BuildContext context, String num01, num02, num03) {
    final valor = double.parse(num01);
    final taxaJuros = double.parse(num02);
    final qntdePag = double.parse(num03);

    final juros = valor * (taxaJuros / 100) * qntdePag;
    final total = valor + juros;

    final mensagem =
        "${formatter.format(valor)} emprestado por $qntdePag = ${formatter.format(total)}";
    if (qntdePag != 0) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(mensagem),
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Vai pagar nunca ? 🧐🧐🧐"),
      ));
    }
  }

  List<TextInputFormatter> decimalNumber() => [
        FilteringTextInputFormatter.allow(RegExp(r'[0-9.]')),
        TextInputFormatter.withFunction((oldValue, newValue) {
          final text = newValue.text;
          if (text.isEmpty) {
            return newValue;
          } else if (double.tryParse(text) == null) {
            return oldValue;
          } else {
            return newValue;
          }
        }),
      ];
}
