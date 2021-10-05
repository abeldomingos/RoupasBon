import 'package:flutter/material.dart';
import 'constants.dart';
import 'produtos.dart';
import 'corpo.dart';

//Class para detalhar cada roupa
class DetalhesTelas extends StatelessWidget {
  final Produtos produto;

  const DetalhesTelas({Key key, this.produto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Cada item de roupa tem uma cor
      backgroundColor: produto.color,
      appBar: ConstruirAppBar(context),
      body: Corpo( produto: produto),

    );
  }
  //Metodo Construção AppBar bola vermelha no carrinho
  // ignore: non_constant_identifier_names
  AppBar ConstruirAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: produto.color,
      elevation: 0,
      leading: IconButton(
        icon: Image.asset(
          "assets/voltar.png",
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      //Acção de pesquisar
      actions: [
        IconButton(
          icon: Image.asset(
            "assets/pesquisar.png",
          ),
          onPressed: () {},
        ),
        //Botão do carrinho
        IconButton(
          icon: Image.asset(
            "assets/compra.png",
          ),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPaddin / 2),
      ],
    );
  }
}
