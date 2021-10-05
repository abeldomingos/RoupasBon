import 'package:flutter/material.dart';
import 'body.dart';

import 'constants.dart';

//Class que cuida do AppBar do aplicativo da pagina
class Pagina extends StatelessWidget {
  get kTextColor => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Metodo ConstruirAppBar e Body
      appBar: ConstruirAppBar(),
      body: Body(),
    );
  }

  // ignore: non_constant_identifier_names
  AppBar ConstruirAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      //Botão de voltar no AppBar
      leading: IconButton(
        icon: Image.asset("assets/voltar.png"),
        onPressed: () {},
      ), 
      //Acção de pesquisar
      actions: [
        IconButton(
        icon: Image.asset("assets/pesquisar.png", 
        color: kTextColor,
        ),
        onPressed: () {},
      ),
      //Botão do carrinho
      IconButton(
        icon: Image.asset("assets/compra.png",
         color: kTextColor,
        
        ),
        onPressed: () {},
      ),
      SizedBox(
        width: kDefaultPaddin / 2
      )
      ],
      
    );
  }
}
