import 'package:flutter/material.dart';
import '../theme/absolute_theme.dart';

class AcercaDeScreen extends StatelessWidget {
  const AcercaDeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAbsoluteBlack,
      appBar: AppBar(
        title: const Text(
          'Acerca de la Obra',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 42, letterSpacing: -2, ),
        ),
        backgroundColor: kAbsoluteBlack,
        foregroundColor: Colors.lightBlueAccent,
        centerTitle: true,
        elevation: 0,
      ),
      // Usamos SingleChildScrollView para que se pueda scrollear si la pantalla es pequeña
      body: SingleChildScrollView(
        // El bottom: 120 salva el texto de ser tapado por tu barra de navegación inferior
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 120),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Imagen principal (usando el Logo que ya tienes en tus assets)
            Image.asset(
              'assets/images/Logo.png', 
              height: 220,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 15),
            
            // Tarjeta de Información General
            Card(
              color: Colors.grey[900],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: const BorderSide(color: Colors.white24, width: 1),
              ),
              elevation: 10,
              shadowColor: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    _buildInfoRow(Icons.brush, 'Creadores', 'Scott Snyder y Nick Dragotta'),
                    const Divider(color: Colors.white24, height: 30),
                    _buildInfoRow(Icons.business, 'Editorial', 'DC Comics (Absolute Universe)'),
                    const Divider(color: Colors.white24, height: 30),
                    _buildInfoRow(Icons.format_list_numbered, 'Temporadas / Números', 'En curso (Volumen 3)'),
                    const Divider(color: Colors.white24, height: 30),
                    _buildInfoRow(Icons.calendar_today, 'Lanzamiento', 'Octubre 2024'),
                  ],
                ),
              ),
            ),
            
            const SizedBox(height: 40),
            
            // Sección de Sinopsis
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Sinopsis',
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              'Absolute Batman es una reinvención audaz del mito del Caballero Oscuro. En esta realidad alterna, Bruce Wayne no es un multimillonario con una mansión y un mayordomo; es un ingeniero civil de clase trabajadora que creció en el Barrio del Crimen y trabaja para la ciudad.\n\nSin la riqueza y los recursos ilimitados de su contraparte clásica, este Batman confía en su brutalidad, ingenio y una fuerza física descomunal para enfrentar a los villanos más aterradores de Gotham, quienes ahora son los que tienen el dinero y el poder. Es una historia oscura sobre un hombre común llevado al límite absoluto.',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
                height: 1.6, // Espaciado entre líneas para mejor lectura
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }

  // Este es un Widget personalizado que creamos para no repetir el mismo código 4 veces en la tarjeta
  Widget _buildInfoRow(IconData icon, String title, String value) {
    return Row(
      children: [
        Icon(icon, color: Colors.lightBlueAccent, size: 30),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(color: Colors.white54, fontSize: 14),
              ),
              const SizedBox(height: 4),
              Text(
                value,
                style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}