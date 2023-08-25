import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF36435D),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Torneo(),
              Fecha(),
              IconList(),
              IconList(),
              IconList(),
              Fecha(),
              IconList(),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: NavBar(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Torneo extends StatelessWidget {
  const Torneo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320, // Toma todo el ancho disponible
     // color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 10), // Espacio vertical alrededor del contenido
      child: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center, // Alinea el primer texto al centro
            children: [
              Text(
                "Torneo Futbol 7 Meso.",
                
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 32,
                  decoration: TextDecoration.underline,
                  decorationColor: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start, // Alinea el segundo texto a la izquierda
            children: [
              Text(
                "Futbol 7",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class Fecha extends StatelessWidget {
  const Fecha({super.key});
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 320,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center, 
        children: [
          Text(
            "Lunes 7 de Abril de 2023",
            style: TextStyle(
              fontSize: 24,
              color: Color.fromARGB(255, 255, 255, 255),
              decoration: TextDecoration.underline,
              decorationColor: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          SizedBox(height: 16), // Espacio vertical para separar el texto del subrayado
        ],
      ),
    );
  }
}


class IconList extends StatelessWidget {
  const IconList({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle.merge(
      child: Container(
        width: 299,
        padding: const EdgeInsets.all(20),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Cancha #1 13:00 p.m.",
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Image(
                              image: NetworkImage(
                                "https://firebasestorage.googleapis.com/v0/b/prueba-4a712.appspot.com/o/bitmap-enB.png?alt=media&token=1a7d34b7-1525-4c7d-bf46-5ca45a118b84",
                              ),
                              width: 30,
                              height: 30,
                            ),
                            Text(
                              "Equipo 1",
                              style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "4 : 0",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Equipo 2",
                              style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                            Image(
                              image: NetworkImage(
                                "https://firebasestorage.googleapis.com/v0/b/prueba-4a712.appspot.com/o/bitmap-enB.png?alt=media&token=1a7d34b7-1525-4c7d-bf46-5ca45a118b84",
                              ),
                              width: 30,
                              height: 30,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}




class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 344,
      height: 80,
      color: Colors.white, // Color de fondo blanco para todo el NavBar
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NavBarItem(
            text: "Calendar",
            image: "https://firebasestorage.googleapis.com/v0/b/prueba-4a712.appspot.com/o/icon-container-aDM.png?alt=media&token=b77f41b1-9c90-4ab1-830d-6337807b1a49",
          ),
          NavBarItem(
            text: "News",
            image: "https://firebasestorage.googleapis.com/v0/b/prueba-4a712.appspot.com/o/icon-container-jyh.png?alt=media&token=fee572c6-5757-450e-a461-aa1f9a512a43",
          ),
          NavBarItem(
            text: "Table",
          
            image: "https://firebasestorage.googleapis.com/v0/b/prueba-4a712.appspot.com/o/icon-container-7nX.png?alt=media&token=0048c834-6529-4f5d-9864-14fccb99fe7c",
          ),
        ],
      ),
    );
  }
}

class NavBarItem extends StatelessWidget {
  final String text;
  final String image;

  const NavBarItem({Key? key, required this.text, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 109,
      height: 52,
      child: Column(
        children: [
          Image.network(
            image,
            width: 30,
            height: 30,
          ),
          Text(
            text,
            style: const TextStyle(
              color: Color(0xFF36435D),
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}