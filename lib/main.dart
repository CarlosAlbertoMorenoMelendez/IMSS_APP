import 'package:flutter/material.dart';

void main() {
  runApp(MascotasApp());
} // funcion principal

class MascotasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App IMSS',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: PaginaInicial());
  } // widget
} // clase mascota APP Widget sin estado

class PaginaInicial extends StatefulWidget {
  PaginaInicial({Key? key}) : super(key: key);
  @override
  _PaginaInicialState createState() => _PaginaInicialState();
} // Widget con estado

class _PaginaInicialState extends State<PaginaInicial> {
  List<String> images = [
    "assets/images/doctor1.jpg",
    "assets/images/IMSS1.jpg",
    "assets/images/doctora1.jpg",
    "assets/images/doctor1.jpg",
    "assets/images/IMSS1.jpg",
    "assets/images/doctora1.jpg",
    "assets/images/doctor1.jpg",
    "assets/images/IMSS1.jpg",
    "assets/images/doctora1.jpg",
    "assets/images/doctor1.jpg",
    "assets/images/IMSS1.jpg",
    "assets/images/doctora1.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter GridView"),
        ),
        body: GridView.custom(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            (BuildContext, index) {
              return Image.asset(
                images[index],
                fit: BoxFit.cover,
              );
            },
            childCount: 12,
          ),
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
        ));
  }
}
