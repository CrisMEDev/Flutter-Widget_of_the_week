import 'package:flutter/material.dart';


class WrapPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Con un row el listado de elementos no cabe en el ancho de la pantalla
        // child: Row(
        //   children: [
        //     _Tag(
        //       texto: 'Hola mundo',
        //     ),
        //     _Tag(
        //       texto: 'Adios mundo',
        //     ),
        //     _Tag(
        //       texto: 'Avatar',
        //     ),
        //     _Tag(
        //       texto: 'Learning wrap',
        //     ),
        //   ],
        // ),

        child: Wrap(

          direction: Axis.vertical,
          alignment: WrapAlignment.spaceBetween,
          spacing: 10.0,

          children: [
            _Tag(
              texto: 'Hola mundo',
            ),
            _Tag(
              texto: 'Adios mundo',
            ),
            _Tag(
              texto: 'Avatar',
            ),
            _Tag(
              texto: 'Learning wrap',
            ),
          ],
        ),
     ),
   );
  }
}

class _Tag extends StatelessWidget {

  final String texto;
  final Color color;

  const _Tag({
    Key key,
    this.texto = 'My text',
    this.color = Colors.blue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: CircleAvatar(
        child: Text(this.texto[0]),
        backgroundColor: Colors.white,
        radius: 10,
      ),
      label: Text(this.texto, style: TextStyle(color: Colors.white),),
      backgroundColor: this.color,
    );
  }
}