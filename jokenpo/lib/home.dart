import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("images/padrao.png"),
                const SizedBox(height: 16,),
                Text(
                  "Escolha um: ",
                  style: TextStyle(
                    fontSize: 24
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("images/pedra.png"),
                    Image.asset("images/tesoura.png"),
                    Image.asset("images/papel.png"),
                  ],
                )
              ]
            ),

          ),
        ),
    );
  }
}
