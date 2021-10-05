import 'package:flutter/material.dart';
import 'produtos.dart';

import 'constants.dart';

//Essa class vai permitir migrar outras classes
class ItemCard extends StatelessWidget {
  final Produtos produto;
  final Function press;
  const ItemCard({
    Key key,
    this.produto,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      //Alinhar o Preço e o texto do preço
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Esse Expanded Coloca todos os quadrados  com o mesmo tamanho
        Expanded(
          //Esse Container é para criar a caixa da primeira roupa
          child: Container(
            padding: EdgeInsets.all(kDefaultPaddin),
            //Para o Demo tinhamos uma altura fixada, agora
            //Já não precisamos deles
            //height: 180,
            //width: 160,
            decoration: BoxDecoration(
              color: produto.color,
              borderRadius: BorderRadius.circular(16),
            ),
            //Entra a primeira imegem ou roupa
            child:
                Hero(tag: "${produto.id}", child: Image.asset(produto.imagem)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 4),
          //produtos vem da nossa lista
          child: Text(
            produto.title,
            style: TextStyle(color: kTextColor),
          ),
        ),
        //Vai O Preço
        Text(
          "\$${produto.preco}KZ",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
