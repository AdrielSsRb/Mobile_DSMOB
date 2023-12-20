import 'dart:io';

void main() {
  // Exibindo o menu de moedas
  print('Escolha a moeda para conversão:');
  print('1 - Euro');
  print('2 - Dólar');
  print('3 - Francos Suíços');

  // Solicitando a escolha da moeda
  stdout.write('Escolha a opção (1-3): ');
  int escolhaMoeda = int.parse(stdin.readLineSync()!);

  // Solicitando o valor em reais
  stdout.write('Digite o valor em reais (R\$): ');
  double valorEmReais = double.parse(stdin.readLineSync()!);

  // Realizando a conversão com base na escolha da moeda
  double valorConvertido = 0.0;
  switch (escolhaMoeda) {
    case 1:
      // Euro
      valorConvertido = converterParaEuro(valorEmReais);
      print('Valor em Euro: €$valorConvertido');
      break;

    case 2:
      // Dólar
      valorConvertido = converterParaDolar(valorEmReais);
      print('Valor em Dólar: \$$valorConvertido');
      break;

    case 3:
      // Francos Suíços
      valorConvertido = converterParaFrancosSuicos(valorEmReais);
      print('Valor em Francos Suíços: CHF $valorConvertido');
      break;

    default:
      print('Opção inválida. Tente novamente.');
  }
}

double converterParaEuro(double valorEmReais) {
  // Taxa de conversão para Euro: 1 Euro = 5,27 reais
  const taxaEuro = 5.27;
  return valorEmReais / taxaEuro;
}

double converterParaDolar(double valorEmReais) {
  // Taxa de conversão para Dólar: 1 Dólar = 4,86 reais
  const taxaDolar = 4.86;
  return valorEmReais / taxaDolar;
}

double converterParaFrancosSuicos(double valorEmReais) {
  // Taxa de conversão para Francos Suíços: 1 Franco Suíço = 5,47 reais
  const taxaFrancosSuicos = 5.47;
  return valorEmReais / taxaFrancosSuicos;
}
