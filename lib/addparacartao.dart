import 'package:flutter/material.dart';
import 'constants.dart';
import 'produtos.dart';

class AddParaCartao extends StatelessWidget {
  const AddParaCartao({
    Key key,
    @required this.produto,
  }) : super(key: key);

  final Produtos produto;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Row(children: [
        Container(
          margin: EdgeInsets.only(right: kDefaultPaddin), //LADO DO COMPRAR BORDA
          height: 50,
          width: 58,
          decoration: BoxDecoration( 
            borderRadius: BorderRadius.circular(13), 
        
            border: Border.all(color: produto.color)
          ),
          child: IconButton(
            icon: Image.asset("assets/compra.png", 
            color: produto.color ,
            ),
            onPressed: () {},
          ),
          
         
        ),
        //Comprar Agora
        Expanded(
          child: SizedBox(
            height:50,
            child: FlatButton(
              shape: RoundedRectangleBorder(  
                borderRadius: BorderRadius.circular(18),
              ),
              color: produto.color,
              onPressed: () {},
              child: Text("Comprar Agora".toUpperCase(),
              style: TextStyle(  
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              
              ),
              
              ),
            
            ),
        ),

      ],),
    );
  }
}


//Class da descrição
class Descricao extends StatelessWidget {
  const Descricao({
    Key key,
    @required this.produto,
  }) : super(key: key);

  final Produtos produto;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultPaddin), //SIZEbOX DO TEXTO ESPAÇO
      child: Text(
        produto.descricao,
        style: TextStyle(height: 1.5), //espaço ou altura do texto da B.ON
      ),
    );
  }
}