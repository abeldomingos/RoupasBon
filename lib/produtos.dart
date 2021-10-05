import 'package:flutter/material.dart';

//Class da descrição dos produtos, ou seja as roupas
class Produtos {
  final String imagem, title, descricao;
  final int preco, size, id;
  final Color color;

  Produtos({
    this.id,
    this.imagem,
    this.title,
    this.preco,
    this.descricao,
    this.size,
    this.color,
  });
}

List<Produtos> produtos = [
  //Produto 1
  Produtos(
      id: 1,
      title: "Leg.Fem Calção",
      preco: 12000,
      size: 12,
      descricao: 'B.ON é uma linha de roupa fitness tecnologica  '
          'capaz de proporcionar muitos benefícios para a saúde, '
          'desde a redução de estrias, diminuição das dores musculares, '
          'aumento da performance desportiva e muito mais.',
      imagem: "assets/01.png",
      color: Color(0xFF3D82AE)),
  //Produto 2
  Produtos(
      id: 2,
      title: "Leg.Mas calção",
      preco: 24000,
      size: 8,
      descricao: 'B.ON é uma linha de roupa fitness tecnologica  '
          'capaz de proporcionar muitos benefícios para a saúde,  '
          'desde a redução de estrias, diminuição das dores musculares,  '
          'aumento da performance desportiva e muito mais.',
      imagem: "assets/02.png",
      color: Color(0xFFF50057)),
  //Produto 3
  Produtos(
      id: 3,
      title: "Leg. Fem Camisa",
      preco: 27000,
      size: 20,
      descricao: 'B.ON é uma linha de roupa fitness tecnologica  '
          'capaz de proporcionar muitos benefícios para a saúde,  '
          'desde a redução de estrias, diminuição das dores musculares,  '
          'aumento da performance desportiva e muito mais.',
      imagem: "assets/12.png",
      color: Color(0xFFF44336)),
  //Produto 4
  Produtos(
      id: 4,
      title: "Leg. manguito",
      preco: 9000,
      size: 24,
      descricao: 'B.ON é uma linha de roupa fitness tecnologica  '
          'capaz de proporcionar muitos benefícios para a saúde,  '
          'desde a redução de estrias, diminuição das dores musculares,  '
          'aumento da performance desportiva e muito mais.',
      imagem: "assets/manguitobem.png",
      color: Color(0xFFBCAAA4)),
  //Produto 5
  Produtos(
      id: 5,
      title: "Leg. Masc Camisa Longa",
      preco: 20000,
      size: 12,
      descricao: 'B.ON é uma linha de roupa fitness tecnologica  '
          'capaz de proporcionar muitos benefícios para a saúde,  '
          'desde a redução de estrias, diminuição das dores musculares, '
          ' aumento da performance desportiva e muito mais. ',
      imagem: "assets/mangas.png",
      color: Color(0xFFFFAB91)),
  //Produto 6
  Produtos(
      id: 6,
      title: "Leg. Fem Macacão",
      preco: 34000,
      size: 12,
      descricao: 'B.ON é uma linha de roupa fitness tecnologica  '
          'capaz de proporcionar muitos benefícios para a saúde,  '
          'desde a redução de estrias, diminuição das dores musculares,  '
          'Aumento da performance desportiva e muito mais. ',
      imagem: "assets/macacao.png",
      color: Color(0xFF880E4F)),
];
