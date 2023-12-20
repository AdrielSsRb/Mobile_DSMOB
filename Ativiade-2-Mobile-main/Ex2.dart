import 'dart:io';

void main() {
  // Chamando a função e armazenando o resultado em uma variável
  double areaTriangulo = calcularAreaTriangulo();

  // Exibindo a área calculada
  print('A área do triângulo é: $areaTriangulo');
}

double calcularAreaTriangulo() {
  // Solicitando ao usuário que digite a base e a altura do triângulo
  stdout.write('Digite o valor da base do triângulo: ');
  double base = double.parse(stdin.readLineSync()!);

  stdout.write('Digite o valor da altura do triângulo: ');
  double altura = double.parse(stdin.readLineSync()!);

  // Calculando a área do triângulo usando a fórmula A = (base * altura) / 2
  double area = (base * altura) / 2;

  // Retornando o valor calculado da área
  return area;
}
