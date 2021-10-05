import 'package:flutter/material.dart';
import 'constants.dart';
import 'produtos.dart';
import 'corpo.dart';


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
                  style: Theme.of(context).textTheme.headline5.copyWith(fontWeight: FontWeight.bold),
                )

          ],
          ),
          ),
        ),
      ],
    );
  }
}