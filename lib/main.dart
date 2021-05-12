import 'package:flutter/material.dart';

void main() => runApp(MyTarjetaApp());

class MyTarjetaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Tarjetas de Meléndez'),
            backgroundColor: Colors.teal[300],
            actions: <Widget>[
              IconButton(icon: Icon(Icons.add_a_photo), onPressed: () {}),
            ], //Fin widget[]
          ),
          body: Container(
            child: ListView(
              children: <Widget>[
                _items('https://raw.githubusercontent.com/jaquelineME/fotos/main/caballo.jpg', 'Caballo'), //Fin item 1
                SizedBox(height: 5.0),

                _items('https://raw.githubusercontent.com/jaquelineME/fotos/main/gato.jpg', 'Gato'), //Fin item 2
                SizedBox(height: 5.0),

                _items('https://raw.githubusercontent.com/jaquelineME/fotos/main/hipopotamo.jpg', 'Hipopotamo'), //Fin item 3
                SizedBox(height: 5.0),

                _items('https://raw.githubusercontent.com/jaquelineME/fotos/main/jirafa.jpg', 'Jirafa'), //Fin item 4
                SizedBox(height: 5.0),

                _items('https://raw.githubusercontent.com/jaquelineME/fotos/main/perro.jpg', 'Perro'), //Fin item 5
                SizedBox(height: 5.0),

                _items('https://raw.githubusercontent.com/jaquelineME/fotos/main/zuricata.jpg', 'Zuricata'), //Fin item 6
                SizedBox(height: 5.0),

                _items('https://raw.githubusercontent.com/jaquelineME/fotos/main/IMG_5526.jpg', 'Meléndez Jaqueline'), //Fin item 6
                SizedBox(height: 5.0),
              ], //Fin de widget[]
            ), //Fin de ListView
          ), //Fin de contenedor
        ) //Fin de scaffold
        ); //Fin de MaterialApp
  } //Fin de widget

  Widget _items(String url, String producto) {
    return Container(
      padding: EdgeInsets.only(top: 5.0, right: 10.0, left: 10.0),
      child: Card(
        color: Colors.pink[50],
        elevation: 10.0,
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 1.0),
                padding: EdgeInsets.only(left: 0.5),
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 0.2),
                  leading: CircleAvatar(
                    backgroundColor: Colors.cyan[50],
                    backgroundImage: NetworkImage(url),
                    maxRadius: 35.0,
                  ),
                  title: Text(producto, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0)),
                  subtitle: Text('SSD de 256 GB en buen estado', style: TextStyle(fontSize: 12.0)),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.teal[300],
                  ),
                ))
          ],
        ),
      ),
    );
  }
} //Fin de MyTarjetaApp
