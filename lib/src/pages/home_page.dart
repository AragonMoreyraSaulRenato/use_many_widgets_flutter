import 'package:flutter/material.dart';
import 'package:use_many_widgets_flutter/src/pages/alert_page.dart';
import 'package:use_many_widgets_flutter/src/providers/menu_provider.dart';
import 'package:use_many_widgets_flutter/src/utils/icono_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
        future: menuProvider.cargarData(),
        initialData: [],
        builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
          return ListView(
            children: _listItems(snapshot.data, context),
          );
        });
  }

  List<Widget> _listItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];
    data.forEach((item) {
      final widgetTemp = ListTile(
          title: Text(item['texto']),
          leading: getIcon(item['icon']),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            color: Colors.blue,
          ),
          onTap: () {
            Navigator.pushNamed(context, item['ruta']);
            /* final route = MaterialPageRoute(
              builder: (context) => AlertPage(),
            );
            Navigator.push(context, route); */
          });
      opciones..add(widgetTemp)..add(Divider());
    });
    return opciones;
  }
}
