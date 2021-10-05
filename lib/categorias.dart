import 'package:flutter/material.dart';

import 'constants.dart';

//Precisamos de um stetefull widget para a nossa categoria das roupas
class Categorias extends StatefulWidget {
  @override
  _CategoriasState createState() => _CategoriasState();
}

class _CategoriasState extends State<Categorias> {
  List<String> categorias = ["Calção", "Calça Longa", "Camisas", "Acessórios"];
  //Por padrão nosso primeiro item será selecionado
  int selecionarIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      //Esse Padding está alinhar os Menus + a direita
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categorias.length,
          itemBuilder: (context, index) => ConstruirCategoria(index),
        ),
      ),
    );
  }

//Esté metodo Construira categoria controla os menus de roupas

  // ignore: non_constant_identifier_names
  Widget ConstruirCategoria(int index) {
    //O GestureDetector vai permitir selecionar outras opções do Menu
    return GestureDetector(
      onTap: () {
        setState(() {
          selecionarIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: Column(
          //alinhar as barras do menu de opções, marcar a primeira opção
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categorias[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selecionarIndex == index ? kTextColor : kTextColor,
              ),
            ),
            //Editar a borda da primeira opção do menu de categorias "Calção será marcado"
            Container(
              margin: EdgeInsets.only(
                  top: kDefaultPaddin / 4), //Top pedding 5 para todos
              height: 2,
              width: 30,
              //Condicionar a opção a selecionar
              color:
                  selecionarIndex == index ? Colors.black : Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
