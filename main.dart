import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(CupertinoTabBarApp());
}

class CupertinoTabBarApp extends StatelessWidget {
  const CupertinoTabBarApp({Key? key}); // Agrega los paréntesis aquí

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: CupertinoTabBarExample(),
    );
  }
}
class CupertinoTabBarExample extends StatelessWidget {
  const CupertinoTabBarExample({Key? key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.folder),
            label: 'Today',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.games),
            label: 'Games',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            label: 'Apps',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mouse),
            label: 'Arcade',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
      ),
      
     tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            
      return Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        'Today', 
                        style: TextStyle(
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.0), 
                      child: Text(
                        'February', 
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.grey.withOpacity(1), 
                        ),
                      ),
                    ),
                  ],
                ),
                      Container(
                        margin: EdgeInsets.all(10.0),
                        child: Card(
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image.network(
                                      'https://www.prensalibre.com/wp-content/uploads/2023/02/Dinosaurios.jpeg?quality=52&w=760&h=430&crop=1',
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                      height: 300,
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 8.0,
                                    left: 16.0,
                                    child: Container(
                                      padding: EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5.0),
                                        color: Colors.black.withOpacity(0.5),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Live your Winzard King dream',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                              shadows: [
                                                Shadow(
                                                  color: Colors.black.withOpacity(0.7),
                                                  blurRadius: 5.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text(
                                            'Inmersive magic Adventure RPG',
                                            style: TextStyle(
                                              color: Colors.white,
                                              shadows: [
                                                Shadow(
                                                  color: Colors.black.withOpacity(0.7),
                                                  blurRadius: 5.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 2),
                     Container(
                          margin: EdgeInsets.all(10.0),
                          child: Card(
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image.network(
                                        'https://i.ytimg.com/vi/u9hy3Do5lgY/maxresdefault.jpg',
                                        fit: BoxFit.cover,
                                        width: double.infinity, // Ancho de la imagen
                                        height: 150,
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0.0, // Extremo inferior de la imagen
                                      left: 0.0, // Extremo izquierdo de la imagen
                                      child: Container(
                                        padding: EdgeInsets.all(8.0),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5.0),
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Mercado libre-Shopping Online',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.bold,
                                                shadows: [
                                                  Shadow(
                                                    color: Colors.black.withOpacity(0.7),
                                                    blurRadius: 5.0,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Text(
                                              'Inmersive magic Adventure RPG',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 8,
                                                shadows: [
                                                  Shadow(
                                                    color: Colors.black.withOpacity(0.7),
                                                    blurRadius: 5.0,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              
                              ],
                            ),
                          ),
                        ),

                      SizedBox(height: 2),
                      Container(
                        margin: EdgeInsets.all(10.0),
                        child: Center(
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image.network(
                                      'https://i.ytimg.com/vi/u9hy3Do5lgY/maxresdefault.jpg',
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                      height: 150,
                                      
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 8.0,
                                    left: 16.0,
                                    child: Container(
                                      padding: EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5.0),
                                        color: Colors.black.withOpacity(0.5),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Live your Winzard King dream',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                              shadows: [
                                                Shadow(
                                                  color: Colors.black.withOpacity(0.7),
                                                  blurRadius: 5.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text(
                                            'Inmersive magic Adventure RPG',
                                            style: TextStyle(
                                              color: Colors.white,
                                              shadows: [
                                                Shadow(
                                                  color: Colors.black.withOpacity(0.7),
                                                  blurRadius: 5.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
