import 'package:flutter/material.dart';
import '../models/personaje.dart';
import '../theme/absolute_theme.dart';
import 'dart:ui';

class DetallePersonajeScreen extends StatelessWidget {
  final Personaje personaje;

  const DetallePersonajeScreen({super.key, required this.personaje});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAbsoluteBlack,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          // 1. La Imagen que ocupa la pantalla completa al inicio
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height * 0.8,
            backgroundColor: kAbsoluteBlack,
            pinned: true, // Deja el título arriba al bajar
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                personaje.nombre,
                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  fontSize: 32,
                  color: kCyanNeon2,
                  shadows: [const Shadow(color: Colors.black, blurRadius: 10)],
                ),
              ),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    personaje.imagenPortada,
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                  // Degradado brutalista para fundir con el negro
                  const DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent, kAbsoluteBlack],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // 2. El Contenido con efecto Ease-In al bajar
          SliverToBoxAdapter(
            child: TweenAnimationBuilder<double>(
              duration: const Duration(milliseconds: 800),
              curve: Curves.easeIn,
              tween: Tween(begin: 0.0, end: 1.0),
              builder: (context, value, child) {
                return Opacity(
                  opacity: value,
                  child: Transform.translate(
                    offset: Offset(0, 20 * (1 - value)),
                    child: child,
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "BASE DE DATOS: ACTIVA",
                      style: TextStyle(
                        color: kCyanNeon2.withOpacity(0.6),
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      personaje.descripcion,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontSize: 18,
                            height: 1.6,
                            color: Colors.white.withOpacity(0.9),
                          ),
                    ),
                    const SizedBox(height: 150), // Espacio para la barra ovalada
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}