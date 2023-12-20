import 'dart:io';

void main() {
  // Saldo inicial
  double saldo = 1000.0;

  while (true) {
    // Exibindo o menu
    print('Menu de Transações Bancárias:');
    print('1 - Saque');
    print('2 - Pix');
    print('3 - Empréstimos');
    print('4 - Transferências');
    print('0 - Sair');

    // Solicitando a escolha do usuário
    stdout.write('Escolha a opção (0-4): ');
    int escolha = int.parse(stdin.readLineSync()!);

    switch (escolha) {
      case 0:
        // Sair do programa
        print('Saindo do programa...');
        return;

      case 1:
        // Saque
        realizarSaque(saldo);
        break;

      case 2:
        // Pix
        realizarPix();
        break;

      case 3:
        // Empréstimos
        realizarEmprestimo();
        break;

      case 4:
        // Transferências
        realizarTransferencia();
        break;

      default:
        print('Opção inválida. Tente novamente.');
    }
  }
}

void realizarSaque(double saldoAtual) {
  stdout.write('Digite o valor do saque: ');
  double valorSaque = double.parse(stdin.readLineSync()!);

  if (valorSaque > saldoAtual) {
    print('Saldo insuficiente. Saque não realizado.');
  } else {
    saldoAtual -= valorSaque;
    print('Saque de $valorSaque realizado. Novo saldo: $saldoAtual');
  }
}

void realizarPix() {
  stdout.write('Digite o valor do Pix: ');
  double valorPix = double.parse(stdin.readLineSync()!);
  print('Pix de $valorPix realizado com sucesso.');
}

void realizarEmprestimo() {
  stdout.write('Digite o valor do empréstimo: ');
  double valorEmprestimo = double.parse(stdin.readLineSync()!);
  print('Empréstimo de $valorEmprestimo aprovado.');
}

void realizarTransferencia() {
  stdout.write('Digite o valor da transferência: ');
  double valorTransferencia = double.parse(stdin.readLineSync()!);
  print('Transferência de $valorTransferencia realizada com sucesso.');
}
