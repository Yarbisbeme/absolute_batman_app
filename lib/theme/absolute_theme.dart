import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// 1. Definimos nuestros colores base exactos de la portada
const Color kAbsoluteBlack = Color.fromARGB(255, 0, 0, 0); // El fondo oscuro de Gotham
const Color kCyanNeon = Color(0xFF00C2FF);     // El azul del logo y el humo
const Color kCyanNeon2 = Color.fromARGB(255, 137, 225, 255);     // El azul del logo y el humo
const Color kMetalGrey = Color(0xFF78909C);    // Gris para textos secundarios
const Color kWhite = Color(0xFFFFFFFF);        // Blanco para leer fácil

class AbsoluteTheme {
  // 2. Creamos la función que construye el tema visual
  static ThemeData get darkTheme {
    return ThemeData.dark().copyWith(
      scaffoldBackgroundColor: kAbsoluteBlack, // Fondo por defecto de las pantallas
      primaryColor: kCyanNeon,
      
      // 3. Estilo global para la barra superior (AppBar)
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent, // Para que el fondo oscuro domine
        elevation: 0, // Sin sombra abajo
        centerTitle: true,
        iconTheme: const IconThemeData(color: kCyanNeon), // Iconos azules
        
        // Usamos GoogleFonts para darle el estilo cómic industrial
        titleTextStyle: GoogleFonts.teko( 
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: kCyanNeon,
          letterSpacing: 2.0, // Letras un poco separadas
        ),
      ),
      
      // 4. Estilo global para los textos
      textTheme: TextTheme(
        // Para títulos grandes
        displayLarge: GoogleFonts.teko(
          fontSize: 42, 
          fontWeight: FontWeight.w900, 
          color: kWhite
        ),
        // Para nombres de personajes
        titleLarge: GoogleFonts.teko(
          fontSize: 28, 
          fontWeight: FontWeight.bold, 
          color: kCyanNeon
        ),
        // Para descripciones y párrafos
        bodyMedium: GoogleFonts.robotoCondensed(
          fontSize: 16, 
          color: kWhite.withOpacity(0.8)
        ),
      ),
    );
  }
}