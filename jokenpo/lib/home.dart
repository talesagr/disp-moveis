import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _message = "Escolha uma opção:";
  String _playerChoice = "";
  String _appChoice = "";
  String _displayedImage = "images/padrao.png";
  final List<String> _choices = ["pedra", "papel", "tesoura"];

  void _playGame(String playerChoice) {
    setState(() {
      _playerChoice = playerChoice;
      _appChoice = _choices[Random().nextInt(3)];
      _message = _getResult(_playerChoice, _appChoice);
      _displayedImage = "images/$playerChoice.png";
    });
  }

  String _getResult(String playerChoice, String appChoice) {
    if (playerChoice == appChoice) {
      return "Empate!";
    } else if ((playerChoice == "pedra" && appChoice == "tesoura") ||
        (playerChoice == "papel" && appChoice == "pedra") ||
        (playerChoice == "tesoura" && appChoice == "papel")) {
      return "Você venceu!";
    } else {
      return "Você perdeu!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Jokenpô")),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(_displayedImage),
              const SizedBox(height: 16),
              Text(
                _message,
                style: const TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () => _playGame("pedra"),
                    child: Image.asset("images/pedra.png"),
                  ),
                  GestureDetector(
                    onTap: () => _playGame("tesoura"),
                    child: Image.asset("images/tesoura.png"),
                  ),
                  GestureDetector(
                    onTap: () => _playGame("papel"),
                    child: Image.asset("images/papel.png"),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                "Você escolheu: $_playerChoice",
                style: const TextStyle(fontSize: 18),
              ),
              Text(
                "App escolheu: $_appChoice",
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}
