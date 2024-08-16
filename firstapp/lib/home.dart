import 'dart:math';

import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _phrase = [
    "Eu sou o caminho, a verdade e a vida. Ninguém vem ao Pai senão por mim. (João 14:6)",
    "Ame o seu próximo como a si mesmo. (Mateus 22:39)",
    "Pois onde estiver o seu tesouro, aí também estará o seu coração. (Mateus 6:21)",
    "Bem-aventurados os que têm fome e sede de justiça, pois serão satisfeitos. (Mateus 5:6)",
    "Venham a mim, todos os que estão cansados e sobrecarregados, e eu lhes darei descanso. (Mateus 11:28)",
    "Porque Deus amou o mundo de tal maneira que deu o seu Filho unigênito, para que todo aquele que nele crê não pereça, mas tenha a vida eterna. (João 3:16)",
    "Com a medida com que medirdes, vos medirão a vós. (Lucas 6:38)",
    "Perdoa as nossas dívidas, assim como perdoamos aos nossos devedores. (Mateus 6:12)",
    "Eu sou a luz do mundo; quem me segue não andará em trevas, mas terá a luz da vida. (João 8:12)",
    "Bem-aventurados os pacificadores, pois serão chamados filhos de Deus. (Mateus 5:9)",
    "Não se turbe o vosso coração; credes em Deus, crede também em mim. (João 14:1)",
    "O que eu faço agora, você não compreende, mas o compreenderá mais tarde. (João 13:7)",
    "Quem de vocês estiver sem pecado, seja o primeiro a atirar pedra. (João 8:7)",
    "Peçam, e será dado; busquem, e encontrarão; batam, e a porta será aberta. (Mateus 7:7)",
    "A boca fala do que está cheio o coração. (Lucas 6:45)",
    "Em verdade vos digo que, se tiverem fé do tamanho de um grão de mostarda, nada vos será impossível. (Mateus 17:20)",
    "Não julguem, para que vocês não sejam julgados. (Mateus 7:1)",
    "Nem só de pão viverá o homem, mas de toda palavra que sai da boca de Deus. (Mateus 4:4)",
    "Eu sou o bom pastor; o bom pastor dá a sua vida pelas ovelhas. (João 10:11)",
    "Tudo o que pedirem em oração, creiam que já o receberam, e assim sucederá. (Marcos 11:24)",
    "Bem-aventurados os que choram, pois serão consolados. (Mateus 5:4)",
    "Deem e será dado a vocês; uma boa medida, calcada, sacudida e transbordante será dada. (Lucas 6:38)",
    "Eu lhes dou um novo mandamento: amem-se uns aos outros. Como eu os amei, vocês devem amar-se uns aos outros. (João 13:34)",
    "Se alguém quiser acompanhar-me, negue-se a si mesmo, tome a sua cruz e siga-me. (Mateus 16:24)",
    "A quem muito foi dado, muito será exigido; e a quem muito foi confiado, mais ainda será pedido. (Lucas 12:48)"
  ];


  var _generatedPhrase = "Clique abaixo para gerar a frase";

  void _generatePhrase(){
    var selectedNumber = Random().nextInt(_phrase.length);

    setState(() {
      _generatedPhrase = _phrase[selectedNumber];
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("images/jesus1.png"),
              Text(
                _generatedPhrase,
                style: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  color: Colors.black
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  fixedSize: const Size(220.0,80.0)
                ),
                  onPressed: (){
                    _generatePhrase();
                  } ,
                  child: Text(
                      "Nova Frase",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
