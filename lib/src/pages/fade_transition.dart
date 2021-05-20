import 'package:flutter/material.dart';


class FadeTransitionPage extends StatefulWidget {

  @override
  _FadeTransitionPageState createState() => _FadeTransitionPageState();
}

class _FadeTransitionPageState extends State<FadeTransitionPage> with SingleTickerProviderStateMixin {

  AnimationController controller;
  Animation<double> opacidad;

  @override
  void initState() {  // Este método solo se dispara la primera vez que se dibuja el widget
    
    controller = new AnimationController( vsync: this, duration: Duration( milliseconds: 2000 ) );

    // En 2 segundos la opacidad pasará de 0 a 1
    opacidad = new Tween( begin: 0.0, end: 1.0 ).animate(controller);

    controller.forward();  // Darle play a la animacion

    super.initState();
  }

  @override
  void dispose() {  // Liberar la memoria cuando el controller no se necesite
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.replay_outlined),
        onPressed: (){
          controller.forward( from: 0.0 );
        }
      ),

      body: Center(
        child: FadeTransition(
          opacity: opacidad,

          child: Rectangulo()
        ),
     ),
   );
  }
}

class Rectangulo extends StatelessWidget {
final Color color;
final double width;
final double height;

const Rectangulo({
  Key key,
  this.color = Colors.blue,
  this.width = 100,
  this.height = 100
}) : super(key: key);

    @override
    Widget build(BuildContext context) {
    return Container(
       width: this.width,
       height: this.height,
       decoration: BoxDecoration(
         color: this.color
       ),
     );
   }
}