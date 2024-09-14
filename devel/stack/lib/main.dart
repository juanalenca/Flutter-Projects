import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      home: Scaffold(

        appBar: AppBar(
          title: const Text("Stack App"),
        ),

        //o stack sobrepoem elementos em outros elementos
        body: Stack(

          //Alinhamento dos elementos
          alignment: AlignmentDirectional.center,

          children: [

            Container(
              width: 500,
              height: 500,
              color: Colors.green,
            ),

            Container(
              width: 300,
              height: 300,
              color: Colors.yellow,
            ),

            //mudando o posicionamento do lemento
            Positioned(
              bottom: 200,
              right: 200,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
            ),

          ]

        ),

      ),

    );

  }

}
