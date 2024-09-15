import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// A classe MyApp é um StatelessWidget que define a estrutura principal da aplicação.
class MyApp extends StatelessWidget {

  // Construtor constante, garantindo que a instância seja imutável e otimizando o desempenho.
  const MyApp({super.key});

  // O método build constrói a interface do usuário da aplicação.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      // Define a página principal da aplicação usando um Scaffold, que fornece uma estrutura padrão
      // como appBar, body e outros elementos.
      home: Scaffold(

        // Barra de título (AppBar) da aplicação.
        appBar: AppBar(
          title: const Text("Stack App"), // Define o texto exibido no título.
        ),

        // Stack permite sobrepor widgets uns sobre os outros na ordem definida.
        body: Stack(

          // Define o alinhamento padrão dos widgets dentro do Stack. 
          // Aqui, todos os widgets são alinhados ao centro.
          alignment: AlignmentDirectional.center,

          children: [

            // Primeiro Container verde que ocupa 500x500 pixels.
            Container(
              width: 500,
              height: 500,
              color: Colors.green, // Cor de fundo verde.
            ),

            // Segundo Container amarelo, menor, que ocupa 300x300 pixels, sobreposto ao verde.
            Container(
              width: 300,
              height: 300,
              color: Colors.yellow, // Cor de fundo amarela.
            ),

            // Positioned permite modificar a posição de um widget específico dentro do Stack.
            // Aqui, o Container azul é posicionado a 200 pixels da borda inferior e direita.
            Positioned(
              bottom: 200,
              right: 200,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue, // Cor de fundo azul.
              ),
            ),

          ]

        ),

      ),

    );
  }
}
