import 'package:Absolute/screens/acerca_de_screen.dart';
import 'package:Absolute/screens/en_mi_vida.dart';
import 'package:Absolute/screens/momentos_screen.dart';
import 'package:Absolute/screens/personajes_screen.dart';
import 'package:Absolute/screens/portada_screen.dart';
import 'package:flutter/material.dart';
import '../theme/absolute_theme.dart'; // Importamos nuestros colores

class MainNavigation extends StatefulWidget {

  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();

}


class _MainNavigationState extends State<MainNavigation> {

  int _currentIndex = 0; // Para controlar la pestaña activa

  final List<Widget> _screens = [
    const PortadaScreen(),      // Índice 0: Vista de Portada
    const PersonajesScreen(),   // Índice 1: Vista de Personajes
    MomentosScreen(),
    const AcercaDeScreen(),     // Índice 3: Vista de Información
    const EnMiVidaScreen(),     // Índice 4: Tu Video Personal
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1. Esto es vital para que el contenido no se detenga antes de la barra
      extendBody: true, 
      
      // 2. Usamos el Stack para que la barra flote "encima" del fondo de Batman
      body: Stack(
        children: [
          // La pantalla actual (Portada, Personajes, etc.)
          _screens[_currentIndex],

          // 3. Posicionamos la barra al fondo pero como una capa superior
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              // Este padding crea el espacio "flotante" alrededor del óvalo
              padding: const EdgeInsets.only(bottom: 20, left: 30, right: 30),
              color: Colors.transparent, // <--- DEBE SER TRANSPARENTE
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  // Aquí el color del óvalo con baja opacidad para el efecto cristal
                  color: kAbsoluteBlack.withOpacity(0.9), 
                  border: Border.all(color: kCyanNeon2, width: 1.5),
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      color: kCyanNeon2.withOpacity(0.2),
                      blurRadius: 15,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _contruirIcono(Icons.home_filled, 0),
                    _contruirIcono(Icons.group_add_rounded, 1),
                    _contruirIcono(Icons.movie_creation_rounded, 2),
                    _contruirIcono(Icons.info_outline, 3),
                    _contruirIcono(Icons.person_pin_circle_rounded, 4),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

   // Wdget para crear los botones de la barra
  Widget _contruirIcono(IconData icono, int index) {
  bool estaSeleccionado = _currentIndex == index;

  return GestureDetector(
    onTap: () {
      setState(() {
        _currentIndex = index;
      });
    },
    child: AnimatedScale(
      duration: const Duration(milliseconds: 300),
      scale: estaSeleccionado ? 1.2 : 1.0, // El icono crece si se selecciona
      curve: Curves.easeOutBack, // Efecto de rebote ligero
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: estaSeleccionado ? kCyanNeon.withOpacity(0.9) : Colors.transparent,
          borderRadius: BorderRadius.circular(30),
          // Añadimos un pequeño brillo neón al botón seleccionado
          boxShadow: estaSeleccionado ? [
            BoxShadow(
              color: kCyanNeon.withOpacity(0.5),
              blurRadius: 5,
              spreadRadius: 1,
            )
          ] : [],
        ),
        child: Icon(
          icono,
          size: 28,
          // Cambiamos el color con una transición suave
          color: estaSeleccionado ? kAbsoluteBlack : kCyanNeon2,
        ),
      ),
    ),
  );
}
}