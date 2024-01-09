import 'package:flutter/material.dart';
import 'dart:math' show Random;

class AnimatedScreen extends StatefulWidget {
  static const name = 'animated_screen';

  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double width = 50;
  double height = 50;
  double borderRadius = 20;
  Color color = Colors.amber;

  void changeShape() {
    final random = Random();

    width = random.nextInt(300) + 120;
    height = random.nextInt(300) + 120;
    borderRadius = random.nextInt(10) + 20;
    color = Color.fromRGBO(
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
      1,
    );

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          curve: Curves.elasticOut,
          duration: Duration(milliseconds: 400),
          width: width <= 0 ? 0 : width,
          height: height <= 0 ? 0 : height,
          decoration: BoxDecoration(
              color: color,
              borderRadius:
                  BorderRadius.circular(borderRadius <= 0 ? 0 : borderRadius)),
        ),
      ),
      appBar: AppBar(
        title: Text('Animated container'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: Icon(
          Icons.play_arrow,
        ),
      ),
    );
  }
}
