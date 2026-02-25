class Personaje {
  final String nombre;
  final String imagenRuta; // La ruta del archivo en assets/images/
  final String imagenPortada; // La ruta de la imagen de portada
  final String descripcion;

  Personaje({
    required this.nombre,
    required this.imagenRuta,
    required this.imagenPortada,
    required this.descripcion,
  });
}

// Aquí creamos una lista de ejemplo para usar en la app
final List<Personaje> listaPersonajes = [
  Personaje(
    nombre: 'ABSOLUTE BATMAN',
    imagenRuta: 'assets/images/Bruce.png',
    imagenPortada: 'assets/images/Batman.png',
    descripcion: 'Absolute Batman is a superhero comic book series written by Scott Snyder and primarily illustrated by Nick Dragotta. The first title to be published by DC Comics for their Absolute Universe line, it reimagines the titular vigilante as a blue-collar civil engineer in a much more violent and chaotic Gotham City than is often seen in mainstream DC continuity.',
  ),
  Personaje(
    nombre: 'BANE',
    imagenPortada: 'assets/images/BaneBatman.png',
    imagenRuta: 'assets/images/BaneSentado.png',
    descripcion: 'Bane\'s home country, the Caribbean island Santa Prisca, had been in a state of perpetual war for over a hundred years at the time of his birth. Throughout the last century Santa Prisca had been colonised by multiple foreign powers, each time the indigenous population would revolt and throw out the occupiers, but soon enough someone else would come to plunder the resource-rich nation. Bane\'s father was the leader of one of the country\'s oldest rebel groups, Cielos Libres, as his own father had been before him. Bane was born on a battlefield and grew up in the militia, learning war from his first moments.',
  ),
  Personaje(
    nombre: 'Killer Croc',
    imagenPortada: 'assets/images/KillerCrogBatman.png',
    imagenRuta: 'assets/images/KillerCrogBatman.png',
    descripcion: 'Waylon "Croc" Jones is the childhood best friend of Bruce Wayne and the owner of Croc\'s Gym where he trains. He was transformed into a crocodilian monster by the scientists at Ark M. Waylon grew up in the impoverished neighborhood Crime Alley, alongside his friends Bruce, Ozzie, Harvey, Eddie, and Selina. Waylon and the others went on the ill-fated field trip to Gotham Zoo where Thomas Wayne, their teacher and Bruce\'s father, was killed. As an adult he became a professional fighter, eventually earning title match against AFC champion Bibbo Bibbowski. At Waylon\'s request Bruce helped him train for his championship fight. \n Bruce and Selina went behind Waylon\'s back to Bibbo\'s manager Carmine Falcone and made a deal to fix the fight. Waylon was expected to lose in the second or third round, and so they agreed that he would be allowed to make it to the seventh and then take a dive, allowing them all to make money by betting on the long odds of Waylon to last longer than anyone expected. Bruce brought the scheme to Waylon, pitching it as a way for him to go out with dignity and the money he would need to open the gym he wanted. However Waylon refused, angry that his friend did not have faith in him.',
  ),
];