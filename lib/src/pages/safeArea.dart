import 'package:flutter/material.dart';


class SafeAreaPage extends StatelessWidget {

  final estilo = TextStyle(
    fontSize: 20.0
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // Aqui se controla que partes deben de estar en un safeArea ya sea portrait o landscape
      right: true,
      top: true,
      bottom: false,
      left: false,

      child: Scaffold(
        body: ListView(
          children: List.generate(100, (index) => Text('Hola mundo', style: estilo,))
        )
      )
    );
  }
}