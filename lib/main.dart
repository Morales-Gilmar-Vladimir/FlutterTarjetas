import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Lugares Turisticos';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
 ImageSection(
                image: 'images/panecillo.jpg',
                ),
              TitleSection(name: "El Panecillo",
               location: "Quito,Ecuador"
               ),
               ButtonSection(),TextSection(
description:
'El Panecillo es una elevación natural de 3.000 metros '
'sobre el nivel del mar, enclavada en el corazón mismo de la '
'ciudad de Quito. Es el sitio más visitado de la ciudad. '
'Es el más importante mirador natural de la ciudad de Quito, '
'declarada Patrimonio Cultural de la Humanidad. Junto a la Virgen '
'del Panecillo, podrás apreciar el Centro Histórico de la Carita de '
'Dios ¡No puedes dejar de visitar este lugar!',
),
  ImageSection(
                image: 'images/ronda.jpg',
                ),            
              TitleSection(name: "La Ronda",
               location: "Quito,Ecuador"
               ),
               ButtonSection(),TextSection(
description:
'La Ronda es una calle peatonal que parece un gran bazar. '
'El turista puede adquirir artesanía de calidad: '
'sombreros hechos a mano, bisutería fina, ropa en general, '
'cuadros de renombrados artistas y hermosas '
'piezas en cerámica para todos los gustos y bolsillos.'
'Ademas, es una de las calles más antiguas de la ciudad,'
'tanto que algunos historiadores aseguran que data del tiempo de los incas.',
),
   ImageSection(
                image: 'images/francisco.jpg',
                ),              
              TitleSection(name: "Iglesia de San Fransisco",
               location: "Quito,Ecuador"
               ),
               ButtonSection(),TextSection(
description:
'La Iglesia de San Francisco es una basílica católica '
'que se levanta en medio del centro histórico de Quito, '
'frente a la plaza del mismo nombre. La estructura es el '
'conjunto arquitectónico de mayor dimensión dentro de '
'los centros históricos de toda América,​ y por ello es '
'conocido como "el Escorial del Nuevo Mundo". San '
'Francisco es considerada una joya de la arquitectura continental.',
),
           ImageSection(
                image: 'images/plaza.jpg',
                ),        
              TitleSection(name: "Plaza Grande",
               location: "Quito,Ecuador"
               ),
               ButtonSection(),TextSection(
description:
'La plaza de la Independencia, también conocida como '
'plaza Grande, es la principal plaza de la ciudad de Quito,'
'ubicada en el casco antiguo de la ciudad. Se trata de la '
'plaza mayor de la capital, centro político e histórico del '
'Ecuador, y asiento simbólico del presidente del Ecuador.'
),
             ImageSection(
                image: 'images/mitad.jpg',
                ),   
              TitleSection(name: "Mitad del Mundo",
               location: "Quito,Ecuador"
               ),
               ButtonSection(),TextSection(
description:
'La Ciudad Mitad del Mundo es un complejo turístico'
'y cultural propiedad de la prefectura de la provincia de'
'Pichincha. Está situado en la parroquia de San '
'Antonio del Distrito Metropolitano de Quito, al norte de '
'la ciudad de Quito. '

),
               
            ],
          ),
        ),
      ),
    );
  }
 
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
         
          Icon(
            Icons.star,
            color: Color.fromARGB(255, 108, 189, 221),
          ),
          const Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: color,
            icon: Icons.call,
            label: 'CALL',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.near_me,
            label: 'ROUTE',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.share,
            label: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
  }
}