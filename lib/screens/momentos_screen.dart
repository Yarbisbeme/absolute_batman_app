import 'package:flutter/material.dart';
import '../models/momento.dart';
import '../theme/absolute_theme.dart'; 
import 'detalle_momento_screen.dart';

class MomentosScreen extends StatelessWidget {
  MomentosScreen({super.key});

  final List<Momento> misMomentos = [
    Momento(
      titulo: 'La primera pelea',
      imagenRuta: 'assets/images/BaneBatman.png', 
      detalles: 'Bane fue enviado por su empleador a Bialya sabotear las conversaciones de paz entre las naciones en guerra de Kahndaq y Qurac, como estaba en JK Participaciones\n interés en que su guerra que duró un siglo continúe. Asesinó al líder de Khandaq e intimidó al líder de Qurac para que se atribuyera la responsabilidad del asesinato y luego de la escalada de hostilidades. Tan pronto como terminó recibió una llamada para presentarse Ciudad de Gotham para tratar con Batman. \Batman se coló en JK. Prisión del sitio negro de Holding Arca M en un intento de rescatar a su amigo Waylon Jones, un sujeto experimental en Ark M. Sin embargo, Bane lo estaba esperando. Bane permitió que Batman lo atacara para demostrar que el Murciélago no podía lastimarlo; luego paralizó sistemáticamente las extremidades de Batman con golpes nerviosos. Incluso con una sola pierna trabajando, Batman se mantuvo desafiante, afirmando que vencería a Bane sin importar cuán "emocionado" estuviera. Sin embargo, Bane reveló que su inmensa fuerza y tamaño no se debían al suministro de respaldo de Venom en los tubos. Activó el esteroide, creciendo hasta alcanzar proporciones monstruosas; y se llevó a Batman, diciendo que necesitaba estar preparado para la cirugía.[3] \n Batman, quien se reveló como Bruce Wayne, residente de Gotham, hizo múltiples intentos de escape. Cada vez lo detenían los experimentos horriblemente mutilados en todo el Arca M; y cada vez Bane venía a dejar inconsciente a Batman y devolverlo a su celda, diciéndole burlonamente a Batman que estaba cerca de salir y alentándolo a intentarlo de nuevo.[4] Batman soportó noventa y un días en Ark M y múltiples cirugías tortuosas, el primer sujeto desde Bane en soportar el conjunto completo de procedimientos; incluida la implantación de un sistema de administración de veneno en su cerebro y médula espinal.[1] Batman parecía estar psicológicamente destrozado, pero Bane y el investigador principal Doctor ArkhamSospechaba que todavía conservaba cierta resistencia. Para probarlo colocaron su equipo en su celda para ver cómo reaccionaría. Como esperaban, después de algunas dudas Batman se puso el disfraz y escapó una vez más. \n Bane acorraló a Batman en un área del Arca M conocida como "Langström Experimento", que estuvo lleno de híbridos humanos/animales mutados. Bane mató casualmente a los híbridos y atacó a Batman; pero a su vez fue atacado por Waylon Jones, quien había sido mutado en una criatura parecida a un cocodrilo. Jones dominó a Bane y él y Batman escaparon a los túneles de alcantarillado. Arkham le preguntó a Bane si estaba emocionado por la fase final del experimento y Bane respondió que sí, porque ahora realmente podía romper con Batman.[4] Debido a que Bruce había demostrado resistencia a sus técnicas habituales, localizó y secuestró a los amigos restantes de Batman, planeando romperlo rompiéndolos.[1] Bane golpeó brutalmente a los amigos de Bruce de maneras que los dejarían horriblemente mutilados y discapacitados de por vida, pero no los mataría. Para su cruel diversión, lo hizo de maneras que serían irónicas.[5] Batman hackeó los canales de transmisión para desafiar a Bane a una pelea uno a uno en la antigua Arena de Veteranos de Gotham. Batman le dijo a Bane que si ganaba, Batman regresaría voluntariamente con él al Arca M para completar la transformación.[2] Bane respondió al desafío y llegó a la arena a la hora señalada. Aunque se suponía que habría un apagón mediático, los aliados de Batman Banda de capucha roja Voló una flota de drones con cámara sobre la arena, transmitiendo la batalla a toda la ciudad. \n Batman comenzó la pelea derrumbando un rascacielos en la cima de Bane, pero se infundió una enorme cantidad de Venom, creciendo hasta alcanzar un tamaño gigantesco y haciendo caso omiso del impacto como si no fuera nada. Batman y el mutado Jones atacaron repetidamente a Bane, infligiéndole un daño devastador, pero Bane simplemente continuó infundiendo Venom y curándose. Intentó incitar a Batman a activar la reserva de Venom que había sido implantada dentro de él y convertirse en el reemplazo que Bane quería, pero Batman se negó. Finalmente, Batman logró cortarle la espalda a Bane, paralizándolo y exponiendo su sistema de lanzamiento de Venom, y luego se burló de él por matar a su padre. En un ataque de ira, Bane infundió aún más, recuperando el uso de sus extremidades y provocando que sus músculos prolapsaran de la piel rota de su espalda. Bane llovió furiosamente golpes sobre Batman,gritando que lo dio todo para que su gente y su hogar pudieran estar seguros, pero ahora es el turno de Batman. Golpeó a Batman con el puño y le gritó que usara su veneno. Comenzó a mutar debido a las cantidades extremas de veneno en su sistema, con ojos y dientes creciendo fuera de su pecho. De repente, el aliado de Batman Catwoman disparó múltiples dardos hipodérmicos llenos de veneno extraído de Batman al sistema de lanzamiento expuesto de Bane. El Venom adicional finalmente sobrecargó el sistema de Bane y creció hasta llenar el estadio con chorros de Venom líquido que brotaban de él. Luego explotó en un charco de carne y sangre. Batman arrojó los restos de Bane Puerto de Gotham, creyendo que estaba muerto. Sin embargo, debido a los cambios en su fisiología, la conciencia de Bane había sobrevivido a pesar de la desintegración completa de su cuerpo físico. El Doctor Arkham recuperó su cerebro, sus ojos y una parte de su columna vertebral del agua y los transfirió a un tanque de almacenamiento en Ark M. El Joker hizo una videollamada a Ark M y le dijo a Bane que consideraba que su derrota a manos de Batman era un revés menor. Sin embargo, luego dijo que creía que Bane no sería feliz en su retiro porque amaba demasiado la guerra y por eso, como "amigo" de Bane, decidió ayudarlo. El Joker obligó a Bane a observar cómo bombardeaba a Santa Prisca y le dijo que ahora estaba "libre" de sus distracciones y podía concentrarse en lo que realmente importaba',
      videoRuta: 'https://youtube.com/shorts/j9FDAIakCxg?si=LwhDD0mj--8eYxzb', 
    ),
    Momento(
      titulo: 'Aparicion de Absolute Joker',
      imagenRuta: 'assets/images/AbsoluteJoker.png', 
      detalles: 'A pesar de ser uno de los treinta hombres más ricos del mundo, el Joker es en gran medida desconocido para el mundo en general. Rara vez utiliza el nombre "Jack Grimm" en asuntos oficiales y, en cambio, utiliza una variedad de alias. Su apodo "El Joker" se deriva del hecho de que nunca se le ha oído reírse de nada. Se ha entrenado con figuras peligrosas como Enrique Ducard y el Liga de Asesinos, matando a cada uno cuando había aprendido todo lo que podía de ellos.[3] El Joker posee cientos de pequeñas islas remotas en todo el mundo. En lugar de matar a sus enemigos, los deja varados solo en una de las islas durante años o incluso décadas, hasta que decide cazarlos y devorarlos en su forma de monstruo.',
      videoRuta: 'https://youtube.com/shorts/xFhUysToxzQ?si=DSH08S5KdgwvLUPg', 
    ),
    Momento(
      titulo: 'Aparicion de Absolute Ivy',
      imagenRuta: 'assets/images/AbsoluteIvy.png', 
      detalles: 'Después de que Batman finalmente derrotó a Bane, El Joker liberó a Isley y Kirk Langström del Arca M para matarlo.[3] Isley regresó al Heart Building que sembró con sus formas de vida híbridas. Rápidamente crecieron hasta convertirse en una jungla bioorgánica que llenó el edificio, con un gigantesco organismo parecido a un árbol que crecía a lo largo de toda la altura del edificio. También contaminó el aire con esporas que transformarían a cualquiera que las inhalara en híbridos bajo el control de Isley. Siete GCPD Los oficiales entraron a investigar y seis estaban infectados. Uno de ellos, Bárbara Gordon, logró evitar la infección. También llevaba un cañón ultrasónico móvil que podría haber dañado a Isley, por lo que envolvió a Gordon con una construcción bioorgánica para neutralizarla. \n Batman también entró al edificio desde el nivel del suelo y comenzó a ascender. Se encontró con los agentes de policía mutados y los mató a todos, pero pudieron quitarle la máscara respiratoria. Mientras subía, encontró a Gordon y la liberó, luego le quitó el cañón y la empujó desde el árbol hasta el nivel del suelo con un paracaídas. En la cima se encontró con un duplicado más humano de Isley, quien lo sujetó con enredaderas y tomó el cañón. Batman quemó la construcción con un lanzallamas, pero surgieron más del árbol. Batman se enfrentó para luchar contra ellos y el verdadero Isley emergió y atacó',
      videoRuta: 'https://youtube.com/shorts/G2jjbTNtrkQ?si=pbOkFonYhlOCyFFP', 
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAbsoluteBlack, 
      appBar: AppBar(
        title: const Text(
          'Momentos Épicos',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
        ),
        backgroundColor: kAbsoluteBlack,
        foregroundColor: Colors.lightBlueAccent, // Color cyan para que haga juego con tu barra
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        // AQUÍ ESTÁ LA MAGIA PARA LA BARRA: Agregamos 100 de padding abajo
        padding: const EdgeInsets.only(top: 10, bottom: 120, left: 16, right: 16),
        itemCount: misMomentos.length,
        itemBuilder: (context, index) {
          final momento = misMomentos[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetalleMomentoScreen(momento: momento),
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 24),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                // Un degradado súper elegante en lugar de un gris plano
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.grey[850]!,
                    Colors.black87,
                  ],
                ),
                border: Border.all(
                  color: Colors.white24, // Borde sutil
                  width: 1,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  // Contenedor de la Imagen
                  Container(
                    height: 220,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      // Este brillo radial hace que los PNG transparentes resalten muchísimo
                      gradient: RadialGradient(
                        colors: [
                          Colors.lightBlueAccent.withOpacity(0.2), 
                          Colors.transparent,
                        ],
                        radius: 0.8,
                      )
                    ),
                    child: Image.asset(
                        momento.imagenRuta, 
                        fit: BoxFit.contain, // Mantiene la proporción de tu PNG
                    ),
                  ),
                  
                  // Contenedor del Título e ícono
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4), // Fondo un poco más oscuro para el texto
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            momento.titulo,
                            style: const TextStyle(
                              color: Colors.white, 
                              fontSize: 20, 
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                        // Ícono indicador de video
                        const Icon(
                          Icons.play_circle_fill_rounded,
                          color: Colors.lightBlueAccent,
                          size: 36,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}