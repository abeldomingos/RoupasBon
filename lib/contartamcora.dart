import 'package:flutter/material.dart';
import 'cartao_outra linea.dart';

//Class do coração
class Contartamnhodocoracao extends StatelessWidget {
  const Contartamnhodocoracao({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartaoContar(),
        Container(
          padding: EdgeInsets.all(8),
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            color: Color(0xFFFF6464),
            shape: BoxShape.circle,
          ),
          //emoji de coração
          child: Image.asset("assets/coracao.png"),
        ),
      ],
    );
  }
}
