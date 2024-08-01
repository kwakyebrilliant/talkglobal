import 'package:flutter/material.dart';

class SpeechTranslate extends StatefulWidget {
  const SpeechTranslate({super.key});

  @override
  State<SpeechTranslate> createState() => _SpeechTranslateState();
}

class _SpeechTranslateState extends State<SpeechTranslate> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: const Color(0xFF6D1B7B).withOpacity(0.3),
            shape: BoxShape.circle,
          ),
          child: Container(
            height: 100.0,
            width: 100.0,
            padding: const EdgeInsets.all(2.0),
            decoration: const BoxDecoration(
              color: Color(0xFFFFFFFF),
              shape: BoxShape.circle,
            ),

            // Arrow forward centered
            child: Center(
              // Arrow forward
              child: Icon(
                Icons.mic_rounded,
                size: 60.0,
                color: const Color(0xFF6D1B7B).withOpacity(0.3),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
