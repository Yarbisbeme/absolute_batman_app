
import 'package:Absolute/screens/main_navigation.dart';
import 'package:Absolute/theme/absolute_theme.dart';
import 'package:flutter/material.dart';
// Importamos las pantallas reales


void main() {
  runApp(const MyBatmanApp());
}

class MyBatmanApp extends StatelessWidget {
  const MyBatmanApp({super.key});

  @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Batman App',
        theme: AbsoluteTheme.darkTheme, // Usamos nuestro tema personalizado
        home: const MainNavigation(), // La pantalla principal con navegación
      );
    }
}

