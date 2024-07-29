import 'package:flutter/material.dart';
import 'dart:math';

// RandomCircles for moods starts here
class RandomCircles extends StatefulWidget {
  const RandomCircles({Key? key}) : super(key: key);

  @override
  _RandomCirclesState createState() => _RandomCirclesState();
}

class _RandomCirclesState extends State<RandomCircles> {
  final Random random = Random();

  final List<String> countryImages = [
    'assets/images/usa.png',
    'assets/images/russia.png',
    'assets/images/italy.png',
    'assets/images/germany.png',
    'assets/images/china.png',
    'assets/images/britain.png',
    'assets/images/arabic.png',
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final List<Widget> circles = [];
        final List<Rect> positions = [];

        for (int i = 0; i < countryImages.length; i++) {
          final double size = random.nextDouble() * 100 + 50;
          double left, top;
          Rect newPosition;

          bool doesOverlap;
          int attempts = 0;
          const int maxAttempts = 100;

          do {
            left = random.nextDouble() * (constraints.maxWidth - size);
            top = random.nextDouble() * (constraints.maxHeight - size);
            newPosition = Rect.fromLTWH(left, top, size, size);

            doesOverlap =
                positions.any((position) => position.overlaps(newPosition));
            attempts++;
          } while (doesOverlap && attempts < maxAttempts);

          if (attempts == maxAttempts) {
            continue;
          }

          positions.add(newPosition);

          Color color = Color.fromARGB(
            255,
            random.nextInt(256),
            random.nextInt(256),
            random.nextInt(256),
          );

          circles.add(
            Positioned(
              left: left,
              top: top,
              child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFCCCC).withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: Container(
                  width: size,
                  height: size,
                  decoration: BoxDecoration(
                    color: color,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                        countryImages[i],
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          );
        }

        return Stack(children: circles);
      },
    );
  }
}
