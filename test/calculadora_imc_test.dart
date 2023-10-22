import 'package:calculadora_imc/calculadora_imc.dart';
import 'package:test/test.dart';

void main() {
 group('Cálculo do IMC', () {
    test('IMC é calculado corretamente', () {
      final pessoa = Pessoa('João', 70.0, 1.75);
      expect(calcularIMC(pessoa), closeTo(22.86, 0.01));
    });

    test('Tratar exceção para altura negativa', () {
      expect(() => Pessoa('Maria', 60.0, -1.6), throwsA(isA<FormatException>()));
    });

    test('Tratar exceção para peso negativo', () {
      expect(() => Pessoa('Carlos', -80.0, 1.8), throwsA(isA<FormatException>()));
    });
  });
}