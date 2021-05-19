import 'package:flutter/material.dart';

class AnimatedOpacityPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return _AnimarOpacidad();
  }
}

class _AnimarOpacidad extends StatefulWidget {
  const _AnimarOpacidad({
    Key key,
  }) : super(key: key);

  @override
  __AnimarOpacidadState createState() => __AnimarOpacidadState();
}

class __AnimarOpacidadState extends State<_AnimarOpacidad> {

  double opacidad = 1.0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.update),
        onPressed: (){
          setState(() {
            opacidad = (opacidad == 1) ? 0 : 1;
          });
        }
      ),

      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,

        child: Wrap(
          direction: Axis.vertical,
          spacing: 10.0,
          children: [
            _Rectangulo(),

            Opacity(              // Opacity permite ocultar un widget y mantener los demás justo donde estaban
              opacity: 0.0,
              child: _Rectangulo(color: Colors.green)
            ),

            AnimatedOpacity(
              duration: Duration( milliseconds: 1000 ),
              curve: Curves.easeOut,
              opacity: opacidad,

              child: _Rectangulo(color: Colors.purple)
            )
          ],
        ),
      )
   );
  }
}

class _Rectangulo extends StatelessWidget {
final Color color;

const _Rectangulo({Key key, this.color = Colors.blue}) : super(key: key);

    @override
    Widget build(BuildContext context) {
    return Container(
       width: 150,
       height: 150,
       decoration: BoxDecoration(
         color: this.color
       ),
     );
   }
}