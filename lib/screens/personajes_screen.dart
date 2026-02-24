import 'package:Absolute/screens/detalle_personaje_screen.dart';
import 'package:flutter/material.dart';
import '../theme/absolute_theme.dart';
import '../models/personaje.dart'; // Importamos tu modelo y la lista

class PersonajesScreen extends StatelessWidget {
  const PersonajesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Usamos un Stack por si quieres poner un fondo sutil luego
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 60), // Espacio para el notch del celular
                Text(
                  "EXPEDIENTES",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                const SizedBox(height: 10),
                Text(
                  "GOTHAM CITY DATABASE",
                  style: TextStyle(color: kCyanNeon2, letterSpacing: 3),
                ),
                const SizedBox(height: 30),
                
                // La cuadrícula de personajes
                Expanded(
                  child: GridView.builder(
                    // Para que la cuadrícula no choque con la barra ovalada al final
                    padding: const EdgeInsets.all(100), 
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // 2 columnas
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      childAspectRatio: 0.65, // Ajuste para que sean tarjetas altas
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

  // Widget personalizado para cada tarjeta
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
          color: kAbsoluteBlack.withOpacity(0.5),
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: kCyanNeon2.withOpacity(0.3), width: 2),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(23),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Image.asset(
                  personaje.imagenRuta,
                  fit: BoxFit.contain,
                  alignment: Alignment.topCenter,
                  // Esto evita que la app truene si una imagen no carga
                  errorBuilder: (context, error, stackTrace) => 
                    const Icon(Icons.broken_image, color: Colors.red, size: 50),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                color: kAbsoluteBlack,
                child: Text(
                  personaje.nombre,
                  textAlign: TextAlign.center,
                  maxLines: 1, // Evita que el nombre use dos líneas y rompa la tarjeta
                  overflow: TextOverflow.ellipsis, // Si es muy largo, pone "..."
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontSize: 16, // Bajamos un poco el tamaño para que quepa bien
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }


}