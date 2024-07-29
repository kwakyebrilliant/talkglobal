import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PromptScreen extends StatefulWidget {
  final VoidCallback showHomeScreen;
  const PromptScreen({super.key, required this.showHomeScreen});

  @override
  State<PromptScreen> createState() => _PromptScreenState();
}

class _PromptScreenState extends State<PromptScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF6D1B7B),
              Color(0xFF000000),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 16.0, right: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(
                      "Translate",
                      style: GoogleFonts.poppins(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFCCCC).withOpacity(0.3),
                      shape: BoxShape.circle,
                    ),
                    child: Container(
                      height: 30.0,
                      width: 30.0,
                      padding: const EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF).withOpacity(0.3),
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 0.1,
                          color: const Color(0xFFFFCCCC).withOpacity(0.8),
                        ),
                      ),

                      // Arrow forward centered
                      child: Center(
                        // Arrow forward
                        child: Transform.rotate(
                          angle: -0.8,
                          child: const Icon(
                            Icons.send,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
