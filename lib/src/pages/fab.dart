import 'package:flutter/material.dart';


class FABPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _BotonFlotante(),
      bottomNavigationBar: _BarraNavegacion(),

      body: Center(
        child: Text('FAB Page'),
     ),
   );
  }
}

class _BarraNavegacion extends StatelessWidget {
  const _BarraNavegacion({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.bubble_chart),
          label: 'Chat'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.build),
          label: 'Settings'
        )
      ],
    );
  }
}

class _BotonFlotante extends StatelessWidget {
  const _BotonFlotante({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0.0,
      highlightElevation: 0.0,
      child: Icon( Icons.add ),
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (_) => Pagina2Page()));
      }
    );
  }
}




// ----------------------------------- Pagina 2 -----------------------------------

class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _BotonFlotante(),
      bottomNavigationBar: _BarraNavegacion(),

      body: Center(
        child: Text('Pagina2 Page'),
     ),
   );
  }
}