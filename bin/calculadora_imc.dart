import 'dart:convert';
import 'dart:io';
import 'package:calculadora_imc/calculadora_imc.dart';

void main() {
  print("Digite seu nome:");
  var nome = stdin.readLineSync(encoding: utf8);

  print("Digite seu peso (em kg):");
  var pesoInput = stdin.readLineSync(encoding: utf8);

  print("Digite sua altura (em metros):");
  var alturaInput = stdin.readLineSync(encoding: utf8);

  try {
    final peso = double.parse(pesoInput ?? "");
    final altura = double.parse(alturaInput ?? "");

    final pessoa = Pessoa(nome!, peso, altura);

    final imc = calcularIMC(pessoa);

    print("Nome: ${pessoa.nome}");
    print("Peso: ${pessoa.peso} kg");
    print("Altura: ${pessoa.altura} m");
    print("IMC: $imc");
  } catch (e) {
    print("Erro: Dados inválidos. Certifique-se de inserir números válidos para peso e altura.");
  }
}




