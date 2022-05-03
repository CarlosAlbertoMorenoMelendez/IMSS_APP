import 'package:flutter/material.dart';
import 'package:moreno/galeriadeinstalaciones.dart';

void main() {
  runApp(MascotasApp());
} // funcion principal

class MascotasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App IMSS V2',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: PaginaInicial());
  } // widget
} // clase mascota APP Widget sin estado
