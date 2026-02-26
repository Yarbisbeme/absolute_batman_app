import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../models/momento.dart';
import '../theme/absolute_theme.dart'; // Ajusta esto si tu tema se llama distinto

class DetalleMomentoScreen extends StatefulWidget {
  final Momento momento;

  const DetalleMomentoScreen({super.key, required this.momento});

  @override
  State<DetalleMomentoScreen> createState() => _DetalleMomentoScreenState();
}

class _DetalleMomentoScreenState extends State<DetalleMomentoScreen> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    
    // El paquete extrae mágicamente el ID (las letras raras) del enlace de YouTube
    final videoId = YoutubePlayer.convertUrlToId(widget.momento.videoRuta) ?? '';

    // Inicializamos el controlador de YouTube
    _controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: false, // Para que no suene de golpe al entrar
        mute: false,
        enableCaption: false,
        forceHD: true, // Intenta cargarlo en alta calidad
      ),
    );
  }

  @override
  void dispose() {
    // Apagamos el video al salir de la pantalla
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // YoutubePlayerBuilder ayuda a que la pantalla completa funcione bien si el usuario gira el teléfono
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        progressIndicatorColor: Colors.blueAccent, // Cambia al color de tu app
        progressColors: const ProgressBarColors(
          playedColor: Colors.blueAccent,
          handleColor: Colors.white,
        ),
      ),
      builder: (context, player) {
        return Scaffold(
          backgroundColor: kAbsoluteBlack, // Tu color de fondo
          appBar: AppBar(
            title: Text(widget.momento.titulo),
            backgroundColor: kAbsoluteBlack,
            foregroundColor: Colors.white,
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // AQUÍ SE IMPRIME EL VIDEO DE YOUTUBE
                player,
                
                // TEXTOS DEL DETALLE
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.momento.titulo,
                        style: const TextStyle(
                          color: Colors.white, 
                          fontSize: 24, 
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        widget.momento.detalles,
                        style: const TextStyle(
                          color: Colors.white70, 
                          fontSize: 16,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}