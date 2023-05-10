import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> nameList = ["Deadpool", "Iron man", "Spider man", "Thor"];
  List<String> imageList = [
    "assets/images/deadpool.jpg",
    "assets/images/iron-man.jpg",
    "assets/images/spider-man.jpg",
    "assets/images/thor.jpg"
  ];
  List<Color> colorsList = [Colors.red, Colors.yellow,
    Colors.cyan, Colors.white10
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white30,
        appBar: AppBar(
            titleSpacing: 35,
            centerTitle: true,
            title:
            Image.asset('assets/images/marvel.png', width: 400, height: 50),
            backgroundColor: Colors.transparent,
            elevation: 0),
        body: Stack(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(left: 100, top: 3),
              child: Text(
                "Choose your hero",
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Swiper(
              itemCount: imageList.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    padding: const EdgeInsets.symmetric(vertical: 45),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(imageList[index], fit: BoxFit.fill),
                        Container(
                          color: colorsList[index],
                          alignment: Alignment.center,
                          child: Text(
                            nameList[index],
                            style: const TextStyle(
                                fontSize: 26,
                                fontFamily: 'Marvel',
                                fontWeight: FontWeight.bold,
                                color: Colors.white70),
                          ),
                        ),
                      ],
                    )
                );
              },
              viewportFraction: 0.8,
              scale: 0.9,
            ),
          ],
        ),
      ),
    );
  }
}