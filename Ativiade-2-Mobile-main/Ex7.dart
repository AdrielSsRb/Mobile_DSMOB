import 'dart:io';

class Carro {
  // Atributos
  late String marca;
  late String modelo;
  late int ano;
  bool motorLigado = false;

  // Construtor
  Carro(this.marca, this.modelo, this.ano);

  // Métodos
  void ligarMotor() {
    motorLigado = true;
    print('Motor ligado.');
  }

  void desligarMotor() {
    motorLigado = false;
    print('Motor desligado.');
  }

  String statusMotor() {
    return motorLigado ? 'Motor ligado.' : 'Motor desligado.';
  }
}

void main() {
  // Entrada de dados pelo terminal
  stdout.write('Digite a marca do carro: ');
  String marca = stdin.readLineSync()!;

  stdout.write('Digite o modelo do carro: ');
  String modelo = stdin.readLineSync()!;

  stdout.write('Digite o ano do carro: ');
  int ano = int.parse(stdin.readLineSync()!);

  // Criando objeto Carro com os dados inseridos
  Carro meuCarro = Carro(marca, modelo, ano);

  print('\nCarro criado:');
  print('Marca: ${meuCarro.marca}');
  print('Modelo: ${meuCarro.modelo}');
  print('Ano: ${meuCarro.ano}\n');

  // Operações com o motor pelo terminal
  while (true) {
    print('Opções:');
    print('1 - Ligar motor');
    print('2 - Desligar motor');
    print('0 - Sair');

    stdout.write('Escolha uma opção: ');
    int escolha = int.parse(stdin.readLineSync()!);

    switch (escolha) {
      case 1:
        meuCarro.ligarMotor();
        break;

      case 2:
        meuCarro.desligarMotor();
        break;

      case 0:
        print('Saindo do programa...');
        return;

      default:
        print('Opção inválida. Tente novamente.');
    }

    print('Status atual do carro: ${meuCarro.statusMotor()}\n');
  }
}
