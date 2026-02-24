
import 'package:flutter/material.dart';
import '../theme/absolute_theme.dart';

class MomentosScreen extends StatelessWidget {
  const MomentosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 1. Imagen de fondo (Asegúrate de que el nombre coincida en tus assets)
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/BamaConHumo.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          
          // 2. Un degradado para que la barra inferior no tape la imagen bruscamente
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  kAbsoluteBlack.withOpacity(0.8),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}