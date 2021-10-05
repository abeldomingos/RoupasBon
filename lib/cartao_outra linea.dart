import 'package:flutter/material.dart';

import 'constants.dart';

//Sinal de mais e menos e imoje de coração
class CartaoContar extends StatefulWidget {
  @override
  _CartaoContarState createState() => _CartaoContarState();
}

class _CartaoContarState extends State<CartaoContar> {
  int numeroItem = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        outralineadobotao(
          icon: Icons.remove,
          press: () {
            if (numeroItem > 1) {
              setState(() {
                numeroItem--;
              });
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
          child: Text(
            //Se o nosso Item tem menos então 10 é mostra 01 02 como aquilo
            numeroItem.toString().padLeft(2, "0"),

            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        outralineadobotao(
          icon: Icons.add,
          press: () {
            setState(() {
              numeroItem++;
            });
          },
        ),
      ],
    );
  }

//Class da linha do nume 01 e +

  SizedBox outralineadobotao({IconData icon, Function press}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlineButton( 
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}


