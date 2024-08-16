import 'dart:io';
import 'dart:math';

void main() {
  exercise8();
}


void exercise1() {
  //1) Escrever um programa que lê um determinado valor positivo e calcula seu dobro.
  stdout.write('Digite um numero positivo:\n');
  String? input = stdin.readLineSync();
  if (input != null) {
    int value = int.parse(input) * 2;
    print('O dobro do numero que voce digitou é ${value}');
  }
}

void exercise2(){
  //2) Escreva um programa que leia dois números em ponto flutuante e imprima a soma desses números.
  stdout.write('Digite dois numero com virgula/ponto:\n');
  String? input1 = stdin.readLineSync();
  String? input2 = stdin.readLineSync();
  if (input1 != null && input2 != null) {
    double value = double.parse(input1) + double.parse(input2);
    print('A soma dos numero é ${value}');
  }
}
void exercise3(){
  //3) Escreva um programa que leia um inteiro, calcule e imprima o quadrado no número lido.
  stdout.write('Digite um numero inteiro:\n');
  String? input1 = stdin.readLineSync();
  if (input1 != null) {
    int value = int.parse(input1) * int.parse(input1);
    print('O QUADRADO DO SEU NUMERO É ${value}');
  }
}

void exercise4(){
  //4) Escreva um programa que leia três números em ponto flutuante e imprima a média aritmética entre eles.
  stdout.write('Digite tres numeros com virgula:\n');
  String? input1 = stdin.readLineSync();
  String? input2 = stdin.readLineSync();
  String? input3 = stdin.readLineSync();
  if (input1 != null && input2 != null && input3 != null) {
    double value = double.parse(input1) + double.parse(input2) + double.parse(input3);
    value = value / 3;
    print('MEDIA: ${value}');
  }
}

void exercise5(){
  //5) Escreva um programa que inicialize uma variável com o dia de hoje, outra com o mês e outra com o ano e imprima a data na tela no formato “dd/mm/aaaa”.
  int today = DateTime.timestamp().day;
  int month = DateTime.timestamp().month;
  int year = DateTime.timestamp().year;
  print('${today}/${month}/${year}');
}

void exercise6(){
  //6) Escreva um programa que leia a altura e o raio de um cilindro circular e imprima
  // o volume do mesmo, segundo a fórmula: V = pi.raio².altura
  // ->obs: Imprima o volume com uma precisão de duas casas decimais.
  stdout.write('Digite o raio e a altura com virgula:\n');
  String? raio = stdin.readLineSync();
  String? altura = stdin.readLineSync();
  if (raio != null && altura != null) {
    double volume = pi * pow(double.parse(raio),2) * double.parse(altura);
    print(volume.toStringAsFixed(2));
  }
}

void exercise7(){
//7) Faca um programa que converta uma medida de temperatura de Fahrenheit para Celsius.
// A partir da fórmula de conversão de Celsius para Fahrenheit, que é C = (5/9 (F-32)) ,
// deduza a fórmula para a conversão de Fahrenheit para Celsius para que você
// possa resolver o problema.
  stdout.write('Digite a temperatura inicial em Farenheit:\n');
  String? temp = stdin.readLineSync();
  if (temp != null) {
    double result = (5/9) * (int.parse(temp) - 32);
    print('${result.toStringAsFixed(2)}C');
  }
}

void exercise8(){
/*
8) Escrever um programa que lê 3 valores reais a, b e c e calcula:
  a) a área do triângulo que tem a por base e b por altura.
  b) a área do círculo de raio c.
  c) a área do trapézio que tem a e b por bases e c por altura.
  d) a área do quadrado de lado b.
  e) a área do retângulo de lados a e b.
* */
  stdout.write('Digite tres inteiros:\n');
  String? input1 = stdin.readLineSync();
  String? input2 = stdin.readLineSync();
  String? input3 = stdin.readLineSync();
  if (input1 != null && input2 != null && input3 != null) {
    int a = int.parse(input1);
    int b = int.parse(input2);
    int c = int.parse(input3);
    double ex1 = (a * b) / 2;
    double ex2 = pi * pow(c,2);
    double ex3 = ((a+b)*c) / 2;
    num ex4 = pow(b,2);
    num ex5 = a * b;
    print('a)${ex1}');
    print('b)${ex2}');
    print('c)${ex3}');
    print('d)${ex4}');
    print('e)${ex5}');
  }
}
