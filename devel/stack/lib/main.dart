import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // Função principal que inicia o aplicativo, chamando a classe MyApp.
}

// A classe MyApp é um StatelessWidget, ou seja, ela não mantém um estado interno e é ideal para 
// elementos que não precisam ser alterados após sua criação.
class MyApp extends StatelessWidget {
  
  // Construtor constante. O 'const' otimiza o desempenho da aplicação ao garantir que esta instância
  // seja imutável e possa ser reutilizada em recompilações sem recriá-la.
  const MyApp({super.key});

  // O método build é responsável por retornar a interface visual do aplicativo.
  @override
  Widget build(BuildContext context) {

    return MaterialApp( // Cria o aplicativo com estilo Material Design.
      // O widget Scaffold fornece a estrutura básica para uma página, incluindo appBar, body, etc.
      home: Scaffold(

        // A AppBar é a barra superior do aplicativo, geralmente usada para títulos e ações.
        appBar: AppBar(
          title: const Text("Stack App"), // Define o texto exibido na barra de título da aplicação.
        ),

        // O Stack permite sobrepor widgets uns aos outros em uma ordem específica, como uma pilha.
        body: Stack(

          // O alinhamento padrão dos widgets dentro do Stack é definido para o centro da tela.
          alignment: AlignmentDirectional.center,

          children: [

            // Primeiro Container, de cor verde, que ocupa 500x500 pixels. 
            // Este será o widget de fundo, já que está na base da pilha.
            Container(
              width: 500,  // Largura do Container.
              height: 500, // Altura do Container.
              color: Colors.green, // Cor de fundo verde.
            ),

            // Segundo Container, de cor amarela, com tamanho de 300x300 pixels.
            // Ele ficará sobreposto ao primeiro, pois o Stack funciona como uma pilha.
            Container(
              width: 300,  // Largura do Container.
              height: 300, // Altura do Container.
              color: Colors.yellow, // Cor de fundo amarela.
            ),

            // Positioned é usado para posicionar manualmente um widget dentro do Stack.
            // Aqui, o terceiro Container (azul) é posicionado a 200 pixels da parte inferior
            // e 200 pixels da direita do Stack.
            Positioned(
              bottom: 200, // Distância da parte inferior do Stack.
              right: 200,  // Distância da parte direita do Stack.
              child: Container(
                width: 100,  // Largura do Container.
                height: 100, // Altura do Container.
                color: Colors.blue, // Cor de fundo azul.
              ),
            ),
          ],
        ),
      ),
    );
  }
}
