import 'package:flutter/material.dart';
import 'package:primeiroapp/constants.dart';
import 'package:primeiroapp/produtos.dart';
import 'detalhes_telas.dart';

//Class que cuida do corpo do aplicativo
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      //Alinhar a barra marcar na primeira opção do menu será o "Calção"
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Roupa Fitness B.ON",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        //Chamar Categorias
        Categorias(),

        // Isso vai espandir as demais roupas
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
              itemCount: produtos.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                //Espaçõ entre os quadrados de cada roupa
                mainAxisSpacing: kDefaultPaddin,
                crossAxisSpacing: kDefaultPaddin,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) => ItemCard(
                //Chamar Tela de Detalhes
                produto: produtos[index],
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetalhesTelas(
                              produto: produtos[index],
                            ))),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

//O ItemCart permite na expanção das roupas
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
    return GestureDetector(
      //Precionar o botão para chmar a Tela Detlhar
      onTap: press,
      child: Column(
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
              child: Image.asset(produto.imagem),
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
            "\ ${produto.preco}KZ",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

//Precisamos de um stetefull widget para a nossa categoria
class Categorias extends StatefulWidget {
  @override
  _CategoriasState createState() => _CategoriasState();
}

class _CategoriasState extends State<Categorias> {
  List<String> categorias = ["Calção", "CalçaLonga", "Camisas", "Meias"];
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
