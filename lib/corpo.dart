import 'package:flutter/material.dart';
import 'package:primeiroapp/constants.dart';
import 'produtos.dart';
import 'contartamcora.dart';

import 'addparacartao.dart';

//Class dos componentes de todas as roupas
class Corpo extends StatelessWidget {
  final Produtos produto;

  const Corpo({Key key, this.produto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Teremos o total de altura e largura
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  //delimitação das bolinhas de cores
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  //Texto do produto com emoji e bordos de cores
                  child: Column(
                    children: <Widget>[
                      //Total de descrição
                      Totaldescricao(
                        produto: produto,
                      ),
                      SizedBox(height: kDefaultPaddin / 2),
                      //essa descrição pode ser uma imagem de texto
                      Descricao(produto: produto),
                      SizedBox(height: kDefaultPaddin / 2),
                      Contartamnhodocoracao(),
                      SizedBox(height: kDefaultPaddin / 2),
                      //Carrinho e comprar
                      AddParaCartao(produto: produto)
                    ],
                  ),
                ),
                //Entra o texto
                TituloDeProdutoImagem(
                  produto: produto,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

//Descrição do produto
class Totaldescricao extends StatelessWidget {
  const Totaldescricao({
    Key key,
    @required this.produto,
  }) : super(key: key);

  final Produtos produto;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //Esse expanded colocou os 12cm no fim alinhou
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Color"),
              Row(
                children: [
                  Corestipos(
                    color: Color(0xFF356C95),
                    isSelected: true,
                  ),
                  Corestipos(color: Color(0xFFF8C078)),
                  Corestipos(color: Color(0xFFA29B9B)),
                ],
              )
            ],
          ),
        ),
        //Entra os 12cm
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: kTextColor),
              children: [
                TextSpan(
                  text: "Tamanho\n",
                ),
                TextSpan(
                  text: "${produto.size} cm",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

//Tipos de cores do texto
class Corestipos extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const Corestipos({
    Key key,
    this.color,
    //Por padrão o selected é falso
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: kDefaultPaddin / 4,
        right: kDefaultPaddin / 2,
      ),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          //Condição dos tipos de cores
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}

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
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
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
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: kDefaultPaddin,
          ),
          //Vai entrar o preço e a imagem
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "preço\n"),
                    TextSpan(
                        text: "\ ${produto.preco}KZ",
                        style: Theme.of(context).textTheme.headline4.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              SizedBox(
                width: kDefaultPaddin,
              ),
              //Imagem da Roupa

              Expanded(
                child: Hero(
                  tag: "${produto.id}",
                  child: Image.asset(
                    produto.imagem,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
