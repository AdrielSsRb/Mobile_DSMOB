class CarrinhoDeCompras {
  // Atributos
  Map<String, int?> itens = {};

  // Métodos
  void adicionarItem(String item, int quantidade) {
    itens[item] = (itens[item] ?? 0) + quantidade;
    print('$quantidade $item(s) adicionado(s) ao carrinho.');
  }

  void removerItem(String item) {
    int? quantidadeRemovida = itens.remove(item);
    if (quantidadeRemovida != null) {
      print('$quantidadeRemovida $item(s) removido(s) do carrinho.');
    } else {
      print('$item não encontrado no carrinho.');
    }
  }

  double calcularTotal() {
    double total = 0.0;
    itens.forEach((item, quantidade) {
      total += obterPrecoItem(item) * (quantidade ?? 0);
    });
    return total;
  }

  // Método fictício para obter o preço de um item
  double obterPrecoItem(String item) {
    // Aqui você pode implementar a lógica real para obter o preço de cada item
    // Este é apenas um exemplo fictício
    if (item == 'ProdutoA') {
      return 100.0;
    } else if (item == 'ProdutoB') {
      return 20.0;
    } else {
      return 0.0; // Valor padrão para itens desconhecidos
    }
  }
}

void main() {
  CarrinhoDeCompras carrinho = CarrinhoDeCompras();

  carrinho.adicionarItem('ProdutoA', 2);
  carrinho.adicionarItem('ProdutoB', 1);
  carrinho.adicionarItem('ProdutoC', 3);

  print('Total do carrinho: R\$${carrinho.calcularTotal()}');

  carrinho.removerItem('ProdutoB');

  print('Total do carrinho após remoção: R\$${carrinho.calcularTotal()}');
}
