import 'package:flutter/material.dart';

// Expanded se encarga de que el widget que lo usa se distribuya a lo largo de todo el expacio posible
// si se usa mas de un expanded se usa todo el espacio posible y se divide entre los todos por igual

// La propiedad flex permite trabajar en base a dimensiones definidas, es decir, si se usan 2 expanded
// con flex = 3 y flex = 2, entonces, el primero ocupará 3/3 del espacio posible mientras que el segundo
// ocupará 2/3

class ExpandedPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            Rectangulo(),

            Expanded(
              flex: 5,
              child: Rectangulo( color: Colors.red )
            ),

            Rectangulo( color: Colors.green ),
            
            Expanded(
              flex: 3,
              child: Rectangulo( color: Colors.purple )
            )
          ],
        )
     ),
   );
  }
}

class Rectangulo extends StatelessWidget {
final Color color;

const Rectangulo({Key key, this.color = Colors.blue}) : super(key: key);

    @override
    Widget build(BuildContext context) {
    return Container(
       width: 70,
       height: 70,
       decoration: BoxDecoration(
         color: this.color
       ),
     );
   }
}