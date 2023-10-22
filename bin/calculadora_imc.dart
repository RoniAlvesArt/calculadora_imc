import 'dart:convert';
import 'dart:io';

import 'package:calculadora_imc/calculadora_imc.dart' as calculadora_imc;

void main(List<String> arguments) {
  print("Digite seu peso:");
  var line = stdin.readLineSync(encoding: utf8);
  try{
      double numero = double.parse(line ?? "");
        print(numero);
  } catch(e){
    print("Número ($line) inválido! Digite um número para continuar:");
  }finally{
    print("Aplicação executada com sucesso.");
  }


}
