import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      //Scaffold é um widget que fornece uma estrutura básica de layout para aplicativos,
      //ele organiza os componentes visuais principais da interface de um aplicativo
      home: Scaffold(

        appBar: AppBar(
          title: const Text("Aplicativo Exemplo Scaffold"),
        ),

        //alinhado no formato de coluna
        body: const Column(

          //Alinhamento do eixo principal, sobrepoem os alinhamentos posteriores
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          //filhos do Row
          children: [

            Center(
              //filho do Center
              child: Text(
                "Hello, World!", 
                style: TextStyle(fontSize: 20),
              ),
            ),

            Center(
              child: Text(
                " What's up?", 
                style: TextStyle(fontSize: 20),
              ),
            ),

            Center(
              child: Text(
                " :)", 
                style: TextStyle(fontSize: 25),
              ),
            ),

          ],

        ),

      )

    );

  }

}
 