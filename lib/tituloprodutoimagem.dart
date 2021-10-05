import 'package:flutter/material.dart';
import 'produtos.dart';
import 'constants.dart';

//Descrição da roupa
class TituloDeProdutoImagem extends StatelessWidget {
  const TituloDeProdutoImagem({
    Key key,
    @required this.produto,
  }) : super(key: key);

  final Produtos produto;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Fitness B.ON Diferenciada",
            style: TextStyle(color: Colors.white),
          ),
          //Titulo do Produto
          Text(
            produto.title,
            style: Theme.of(context).textTheme.headline4.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: kDefaultPaddin,),
          //Vai entrar o preço e a imagem
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "preço\n"),
                    TextSpan(
                        text: "\ ${produto.preco}KZ",
                        style:
                            Theme.of(context).textTheme.headline4.copyWith(color:  Colors.white, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              SizedBox(width: kDefaultPaddin,),
              //Imagem da Roupa
              Expanded(
                child: Image.asset(produto.imagem,
                fit: BoxFit.fill,
                ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
