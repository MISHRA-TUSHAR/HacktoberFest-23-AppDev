import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final PageController ctrl = PageController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/orion.jpg'),
              fit: BoxFit.fitHeight,
            ),
          ),
          child: PageView(
            scrollDirection: Axis.horizontal,
            controller: ctrl,
            children: const [
              MoonCont(imageUrl: 'assets/moon-phase-02.png'),
              MoonCont(imageUrl: 'assets/moon-phase-03.png'),
              MoonCont(imageUrl: 'assets/moon-phase-04.png'),
              MoonCont(imageUrl: 'assets/moon-phase-05.png'),
              MoonCont(imageUrl: 'assets/moon-phase-06.png'),
              MoonCont(imageUrl: 'assets/moon-phase-07.png'),
              MoonCont(imageUrl: 'assets/moon-phase-08.png'),
              MoonCont(imageUrl: 'assets/moon-phase-09.png'),
              MoonCont(imageUrl: 'assets/moon-phase-10.png'),
              MoonCont(imageUrl: 'assets/moon-phase-11.png'),
              MoonCont(imageUrl: 'assets/moon-phase-12.png'),
              MoonCont(imageUrl: 'assets/moon-phase-13.png'),
              MoonCont(imageUrl: 'assets/moon-phase-14.png'),
              MoonCont(imageUrl: 'assets/moon-phase-15.png'),
              MoonCont(imageUrl: 'assets/moon-phase-16.png'),
              MoonCont(imageUrl: 'assets/moon-phase-17.png'),
              MoonCont(imageUrl: 'assets/moon-phase-18.png'),
              MoonCont(imageUrl: 'assets/moon-phase-19.png'),
              MoonCont(imageUrl: 'assets/moon-phase-20.png'),
              MoonCont(imageUrl: 'assets/moon-phase-21.png'),
              MoonCont(imageUrl: 'assets/moon-phase-22.png'),
            ],
          ),
        ),
      ),
    );
  }
}

class MoonCont extends StatelessWidget {
  final String imageUrl;
  const MoonCont({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      maxScale: 3,
      child: Container(
        height: 200,
        width: 200,
        margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 100),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(imageUrl),
          ),
        ),
      ),
    );
  }
}
