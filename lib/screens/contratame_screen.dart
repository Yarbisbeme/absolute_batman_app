import 'package:flutter/material.dart';
import '../theme/absolute_theme.dart';

class ContratameScreen extends StatelessWidget {
  const ContratameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAbsoluteBlack,
      appBar: AppBar(
        title: const Text(
          'Contrátame',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
        ),
        backgroundColor: kAbsoluteBlack,
        foregroundColor: Colors.lightBlueAccent,
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        // Padding inferior de 120 para que la barra de navegación no tape el contenido
        padding: const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 120),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Foto de perfil con un borde brillante
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.lightBlueAccent, width: 3),
                boxShadow: [
                  BoxShadow(
                    color: Colors.lightBlueAccent.withOpacity(0.3),
                    blurRadius: 15,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: const CircleAvatar(
                radius: 100,
                // IMPORTANTE: Asegúrate de poner tu foto en la carpeta de assets con este nombre
                backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/180717493?v=4'),
                backgroundColor: Colors.grey, // Color de fondo si la foto tarda en cargar
              ),
            ),
            const SizedBox(height: 20),
            
            // Tu Nombre y Profesión
            const Text(
              'Yarbis Beltre Mercedes', // Cambia esto por tu nombre completo si prefieres
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'FullStack Dev / Mobile Dev',
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                letterSpacing: 1.2,
              ),
            ),
            const SizedBox(height: 30),

            // Tarjeta de "Por qué contratarme"
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.white24),
              ),
              child: const Text(
                'Soy un desarrollador apasionado por crear aplicaciones móviles fluidas, atractivas y funcionales. Si te gustó la experiencia y el diseño de esta app de Absolute Batman, ¡estoy listo para llevar tu próximo proyecto al siguiente nivel!',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 15,
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 30),

            // Botones / Tarjetas de Contacto
            _buildContactCard(Icons.email_outlined, 'Email', 'yarbisbeme@gmail.com'), // Pon tu correo
            const SizedBox(height: 15),
            _buildContactCard(Icons.phone_android_rounded, 'Teléfono', '+1 (829) 564-4898'), // Pon tu número
            const SizedBox(height: 15),
            _buildContactCard(Icons.link_rounded, 'LinkedIn / GitHub', '@Yarbisbeme'), // Pon tu usuario
          ],
        ),
      ),
    );
  }

  // Widget reutilizable para las tarjetas de contacto
  Widget _buildContactCard(IconData icon, String title, String subtitle) {
    return Card(
      color: Colors.black87,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: Colors.white12),
      ),
      child: ListTile(
        leading: Icon(icon, color: Colors.lightBlueAccent, size: 28),
        title: Text(
          title,
          style: const TextStyle(color: Colors.white54, fontSize: 13),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}