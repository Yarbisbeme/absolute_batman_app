import 'package:Absolute/screens/detalle_personaje_screen.dart';
import 'package:flutter/material.dart';
import '../theme/absolute_theme.dart';
import '../models/personaje.dart'; // Importamos tu modelo y la lista

// ... tus imports se mantienen igual

class PersonajesScreen extends StatelessWidget {
  const PersonajesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fondo oscuro sólido para mantener el estilo
          Container(color: kAbsoluteBlack),
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 60),
                Text(
                  "EXPEDIENTES",
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    letterSpacing: -1, // Toque brutalista: letras más juntas
                    fontSize: 65,
                  ),
                ),
                Text(
                  "GOTHAM CITY DATABASE",
                  style: TextStyle(
                    color: kCyanNeon2, 
                    letterSpacing: 5, // Contraste brutalista: mucha separación
                    fontSize: 10,
                    fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(height: 30),
                
                Expanded(
                  child: GridView.builder(
                    // REDUCIMOS EL PADDING AQUÍ
                    padding: const EdgeInsets.only(top: 10, bottom: 120), 
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                      childAspectRatio: 0.75, // Tarjetas un poco más anchas
                    ),
                    itemCount: listaPersonajes.length,
                    itemBuilder: (context, index) {
                      final personaje = listaPersonajes[index];
                      return _tarjetaPersonaje(context, personaje);
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _tarjetaPersonaje(BuildContext context, Personaje personaje) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetallePersonajeScreen(personaje: personaje),
          ),
        );  
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF1A1A1A), // Un gris muy oscuro para contraste
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: kCyanNeon2, width: 1), // Borde neón sólido
          boxShadow: [
            BoxShadow(
              color: kCyanNeon2.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(4, 4), // Sombra brutalista desplazada
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  color: Colors.black,
                  child: Image.asset(
                    personaje.imagenRuta,
                    fit: BoxFit.cover, // Cover se ve más moderno y llena la tarjeta
                    alignment: Alignment.topCenter,
                    errorBuilder: (context, error, stackTrace) => 
                      const Icon(Icons.broken_image, color: Colors.red),
                  ),
                ),
              ),
              // Franja con el nombre abajo
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: kCyanNeon2, // Fondo azul neón para el nombre (Estilo Brutalista)
                ),
                child: Text(
                  personaje.nombre,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black, // Texto negro sobre fondo neón
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    fontFamily: 'Teko', // O la que estés usando para títulos
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}