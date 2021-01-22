import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Un', 'Dos', 'Tres', 'Cuatro'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes ListView'),
      ),
      body: ListView(
        //children: _crearItems(),
        children: _crearItemShort(), //
      ),
    );
  }

  /* List<Widget> _crearItems() {
    List<Widget> list = new List<Widget>();
    for (String item in opciones) {
      final tempWidget = ListTile(
        title: Text(item),
      );
      list..add(tempWidget)..add(Divider());
    }
    return list;
  } */

  List<Widget> _crearItemShort() {
    return opciones.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text(item),
            subtitle: Text('Holaaaaaaaa'),
            leading: Icon(Icons.accessibility_new),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
