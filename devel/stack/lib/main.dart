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
        body: const ResponsiveStack(),
      ),
    );
  }
}

// Widget separado para facilitar a manutenção e melhorar a clareza.
class ResponsiveStack extends StatelessWidget {
  const ResponsiveStack({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;

    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        _buildContainer(
          width: screenWidth * 0.8, 
          height: screenHeight * 0.5, 
          color: Colors.green,
        ),
        _buildContainer(
          width: screenWidth * 0.5, 
          height: screenHeight * 0.3, 
          color: Colors.yellow,
        ),
        Positioned(
          bottom: screenHeight * 0.2,
          right: screenWidth * 0.2,
          child: _buildContainer(
            width: screenWidth * 0.15, 
            height: screenHeight * 0.1, 
            color: Colors.blue,
          ),
        ),
      ],
    );
  }

  // Método reutilizável para criar containers com as propriedades fornecidas.
  Widget _buildContainer({required double width, required double height, required Color color}) {
    return Container(
      width: width,
      height: height,
      color: color,
    );
  }
}
