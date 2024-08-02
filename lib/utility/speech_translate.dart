import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Icon(
            Icons.graphic_eq_rounded,
            size: 130.0,
            color: const Color(0xFF6D1B7B).withOpacity(0.8),
          ),
        ),
        // Bottom
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Container(
            padding: const EdgeInsets.only(top: 12.0),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: const Color(0xFF6D1B7B).withOpacity(0.8),
                  width: 0.2,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '0/30 seconds',
                  style: GoogleFonts.poppins(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w300,
                    color: const Color(0xFF000000),
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.play_arrow_rounded,
                      color: const Color(0xFF6D1B7B).withOpacity(0.8),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
