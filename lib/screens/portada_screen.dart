import 'package:flutter/material.dart';
import '../theme/absolute_theme.dart';

class PortadaScreen extends StatelessWidget {
  const PortadaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAbsoluteBlack, // Fondo de seguridad
      body: Stack(
        children: [
          // Capa 1: La imagen de Batman ocupando TODO el fondo
          Positioned.fill(
            child: Image.asset(
              'assets/images/BatmanConHumo.jpg',
              fit: BoxFit.contain,
              alignment: Alignment.bottomCenter,
            ),
          ),

          // Capa 2: Degradado oscuro para que el logo y la barra resalten
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    kAbsoluteBlack.withOpacity(0.8), // Oscurece arriba para el logo
                    Colors.transparent,
                    Colors.transparent,
                    kAbsoluteBlack.withOpacity(0.8), // Oscurece abajo para la barra
                  ],
                  stops: const [0.0, 0.2, 0.8, 1.0],
                ),
              ),
            ),
          ),

          // Capa 3: El Logo arriba
          SafeArea(
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Image.asset(
                  'assets/images/Logo.png',
                  width: MediaQuery.of(context).size.width * 0.8,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}