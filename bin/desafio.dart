import 'dart:io';

import 'package:desafio/main.dart' as somatorioDivisiveisPor3ou5;

void main(List<String> arguments) {
  bool continuar = true;

  while (continuar) {
    stdout.write("Insira um número inteiro positivo: ");

    String? input = stdin.readLineSync();

    if (input == null ||
        input.trim().isEmpty ||
        !input.trim().contains(RegExp(r'^\d+$'))) {
      print("Entrada inválida. Por favor, insira um número inteiro positivo.");
      continue;
    }

    int numero = int.parse(input);

    int resultado = somatorioDivisiveisPor3ou5.result(numero);
    print(
        "O somatório dos números divisíveis por 3 ou 5 até $numero é: $resultado");

    stdout.write("Deseja reiniciar o programa? (1 para sim, 2 para não): ");
    String escolha = stdin.readLineSync()!;

    if (escolha.trim() != "1") {
      continuar = false;
    }
  }
}
