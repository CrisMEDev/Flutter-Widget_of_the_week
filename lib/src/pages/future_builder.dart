import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:widget_of_the_week/models/fake_data.dart';

Future<FakeData> getUsuarios() async {

  final url = Uri.parse('https://reqres.in/api/users?page=2');

  final resp = await http.get(url);

  return fakeDataFromJson(resp.body);

}

class FutureBuilderPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getUsuarios(),
        builder: (BuildContext context, AsyncSnapshot<FakeData> snapshot) {

          print(snapshot.connectionState);    // En este punto esta waiting y despues pasa a done cuando resuelve el future
          print(snapshot.data);    // En este punto esta waiting y despues pasa a done cuando resuelve el future

          if ( snapshot.connectionState == ConnectionState.done ){
            print(snapshot.data);   // Aqui la data ya contiene la respuesta
            return _ListaUsuarios( usuarios: snapshot.data.data, );
          } else
            return Center(child: CircularProgressIndicator());
        },
      ),
   );
  }
}

class _ListaUsuarios extends StatelessWidget {

  final List<Usuario> usuarios;

  const _ListaUsuarios({
    Key key,
    @required this.usuarios,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: usuarios.length,
      itemBuilder: ( BuildContext context, int index ){
        return ListTile(
          title: Text(usuarios[index].firstName),
          subtitle: Text(usuarios[index].email),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(50.0),
            child: Container(
              width: 50,
              height: 100,
              child: Image(image: NetworkImage(usuarios[index].avatar), fit: BoxFit.cover, ),
            ),
          ),
        );
      },
    );
  }
}