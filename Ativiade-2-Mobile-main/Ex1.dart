import 'dart:io';

void main() {
  // Chamando a função e armazenando o resultado em uma variável Map
  Map<String, dynamic> usuarioInfo = obterInformacoesUsuario();

  // Exibindo as informações do usuário
  print('Informações do Usuário:');
  print('Nome: ${usuarioInfo['nome']}');
  print('Curso: ${usuarioInfo['curso']}');
  print('Idade: ${usuarioInfo['idade']}');
}

Map<String, dynamic> obterInformacoesUsuario() {
  // Criando um mapa para armazenar as informações do usuário
  Map<String, dynamic> usuarioInfo = {};

  // Solicitando ao usuário que digite as informações
  stdout.write('Digite o Nome: ');
  usuarioInfo['nome'] = stdin.readLineSync();

  stdout.write('Digite o Curso: ');
  usuarioInfo['curso'] = stdin.readLineSync();

  stdout.write('Digite a Idade: ');
  // Lendo a idade como uma string e convertendo para inteiro
  usuarioInfo['idade'] = int.parse(stdin.readLineSync()!);

  // Retornando o mapa com as informações do usuário
  return usuarioInfo;
}
