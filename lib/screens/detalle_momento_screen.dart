import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import '../models/momento.dart';
import '../theme/absolute_theme.dart';

class DetalleMomentoScreen extends StatefulWidget {
  final Momento momento;

  const DetalleMomentoScreen({super.key, required this.momento});

  @override
  State<DetalleMomentoScreen> createState() => _DetalleMomentoScreenState();
}

class _DetalleMomentoScreenState extends State<DetalleMomentoScreen> {
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;

  @override
  void initState() {
    super.initState();
    _inicializarVideo();
  }

  Future<void> _inicializarVideo() async {
    // Le decimos a Flutter que busque el video en tus assets
    _videoPlayerController = VideoPlayerController.asset(widget.momento.videoRuta);
    await _videoPlayerController.initialize();

    // Chewie le pone la interfaz bonita (botones, barra de progreso)
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      aspectRatio: _videoPlayerController.value.aspectRatio,
      autoPlay: false,
      looping: false,
      // Personalizamos los colores para que se vea rudo como Batman
      materialProgressColors: ChewieProgressColors(
        playedColor: Colors.blueAccent, // Cambia esto por tu color principal
        handleColor: Colors.white,
        backgroundColor: Colors.grey,
        bufferedColor: Colors.white30,
      ),
    );
    
    // Actualizamos la pantalla para que muestre el reproductor ya cargado
    setState(() {}); 
  }

  @override
  void dispose() {
    // IMPORTANTE: Liberamos la memoria al salir de la pantalla
    _videoPlayerController.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAbsoluteBlack,
      appBar: AppBar(
        title: Text(widget.momento.titulo),
        backgroundColor: kAbsoluteBlack,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Contenedor del Video
            Container(
              height: 250,
              color: Colors.black, // Fondo negro mientras carga
              child: _chewieController != null &&
                      _chewieController!.videoPlayerController.value.isInitialized
                  ? Chewie(controller: _chewieController!)
                  : const Center(
                      child: CircularProgressIndicator(color: Colors.white),
                    ),
            ),
            
            // Textos de Detalle
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
                      height: 1.5, // Le da un poco de espacio entre líneas
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}