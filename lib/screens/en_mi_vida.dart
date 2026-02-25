import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../theme/absolute_theme.dart';

class EnMiVidaScreen extends StatefulWidget {
  const EnMiVidaScreen({super.key});

  @override
  State<EnMiVidaScreen> createState() => _EnMiVidaScreenState();
}

class _EnMiVidaScreenState extends State<EnMiVidaScreen> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    // ID extraído de tu enlace: https://youtu.be/tGH5AL9SqTY
    const String videoId = 'tGH5AL9SqTY'; 

    _controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: false, // El video no inicia solo para no interrumpir la navegación
        mute: false,
        forceHD: true,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAbsoluteBlack,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 60),
            // Encabezado con estilo "Expediente"
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "MI REFLEXIÓN",
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      fontSize: 40,
                      letterSpacing: -1,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "CONEXIÓN CON EL UNIVERSO ABSOLUTE",
                    style: TextStyle(
                      color: kCyanNeon2, 
                      letterSpacing: 2, 
                      fontSize: 10,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            
            // Contenedor del reproductor con borde neón sólido (Brutalismo)
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                border: Border.all(color: kCyanNeon2, width: 2),
                boxShadow: [
                  BoxShadow(
                    color: kCyanNeon2.withOpacity(0.15),
                    blurRadius: 20,
                    spreadRadius: 5,
                  )
                ],
              ),
              child: YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
                progressIndicatorColor: kCyanNeon2,
                progressColors: ProgressBarColors(
                  playedColor: kCyanNeon2,
                  handleColor: kCyanNeon,
                ),
              ),
            ),
            
            // Bloque de texto con franja lateral gruesa
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFF1A1A1A),
                  border: Border(
                    left: BorderSide(color: kCyanNeon2, width: 6), // Franja lateral brutalista
                  ),
                ),
                child: Text(
                  "En este video comparto mi visión sobre la importancia de la resiliencia y el ingenio técnico. Cómo, al igual que en Absolute Batman, podemos construir nuestro propio camino enfrentando cualquier reto profesional o académico.",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: 16,
                    height: 1.6,
                    color: Colors.white.withOpacity(0.9),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 100), // Espacio para la barra de navegación
          ],
        ),
      ),
    );
  }
}