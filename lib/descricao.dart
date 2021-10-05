import 'package:flutter/material.dart';
import 'constants.dart';
import 'produtos.dart';

//Class da descrição
class Descricao extends StatelessWidget {
  const Descricao({
    Key key,
    @required this.produto,
  }) : super(key: key);

  final Produtos produto;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin), //SIZEbOX DO TEXTO ESPAÇO
      child: Text(
        produto.descricao,
        style: TextStyle(
            height: 1.5), //espaço ou altura do texto da B.ON
      ),
    );
  }
}