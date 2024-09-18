import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// MyApp é o ponto de entrada da aplicação.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Definindo o título do aplicativo.
      title: 'Aplicativo Exemplo',
      
      // Definindo o tema do aplicativo.
      theme: ThemeData(
        primarySwatch: Colors.blue, // Cor primária azul para o tema.
        textTheme: const TextTheme(
          // Definindo o estilo de texto padrão.
          bodyText2: TextStyle(fontSize: 20),
        ),
      ),
      
      // O widget que será exibido como a home (tela principal) do app.
      home: const ScaffoldExample(),
    );
  }
}

// ScaffoldExample define a estrutura principal da interface do aplicativo.
class ScaffoldExample extends StatelessWidget {
  const ScaffoldExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Definindo a AppBar (barra de título) da interface.
      appBar: AppBar(
        title: const Text("Aplicativo Exemplo Scaffold"),
        centerTitle: true, // Centraliza o título no AppBar.
      ),
      
      // O corpo do Scaffold está envolvido em Padding para espaçamento.
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Espaçamento ao redor dos elementos.
        
        // Coluna para organizar os textos verticalmente.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centraliza os elementos verticalmente.
          crossAxisAlignment: CrossAxisAlignment.stretch, // Estica os elementos horizontalmente.
          
          // Definindo os filhos da coluna.
          children: const [
            // CustomText é um widget personalizado para exibir texto.
            CustomText(
              text: "Hello, World!",
            ),
            SizedBox(height: 20), // Espaço entre os elementos.
            CustomText(
              text: "What's up?",
            ),
            SizedBox(height: 20), // Espaço entre os elementos.
            CustomText(
              text: ":)",
              fontSize: 25, // Tamanho de fonte maior para o último texto.
            ),
          ],
        ),
      ),
    );
  }
}

// CustomText é um widget que facilita a exibição de textos com um estilo personalizado.
class CustomText extends StatelessWidget {
  final String text; // O texto a ser exibido.
  final double fontSize; // Tamanho da fonte, com valor padrão.

  // Construtor do widget, com 'text' como obrigatório e 'fontSize' opcional.
  const CustomText({super.key, required this.text, this.fontSize = 20});

  @override
  Widget build(BuildContext context) {
    return Center(
      // Exibe o texto com o estilo de fonte configurado.
      child: Text(
        text,
        style: TextStyle(fontSize: fontSize),
      ),
    );
  }
}
