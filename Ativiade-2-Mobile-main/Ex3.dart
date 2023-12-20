import 'dart:io';

void main() {
  // Chamando a função e armazenando o resultado em uma variável
  double salarioFinal = calcularSalario();

  // Exibindo o salário final calculado
  print('O salário final é: $salarioFinal');
}

double calcularSalario() {
  // Solicitando ao usuário que digite o salário base
  stdout.write('Digite o salário base: ');
  double salarioBase = double.parse(stdin.readLineSync()!);

  // Calculando o desconto de 10% de impostos
  double descontoImpostos = 0.1 * salarioBase;

  // Calculando a bonificação de 20%
  double bonificacao = 0.2 * salarioBase;

  // Calculando o salário final considerando o desconto e a bonificação
  double salarioFinal = salarioBase - descontoImpostos + bonificacao;

  // Retornando o valor do salário final
  return salarioFinal;
}
