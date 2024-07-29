import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  final VoidCallback showPromptScreen;
  const HomeScreen({super.key, required this.showPromptScreen});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF6D1B7B),
              Color(0xFF000000),
            ],
          ),

          // Background image here
          image: DecorationImage(
            image: AssetImage(
              "assets/images/worldmap.png",
            ),
            fit: BoxFit.cover,
          ),
        ),

        // Column starts here
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // First Expanded
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
              ),
            ),

            // Second expanded
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                // Column starts here
                child: Column(
                  children: [
                    // Richtext here
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: GoogleFonts.poppins(
                          height: 1.6,
                        ),
                        children: const <InlineSpan>[
                          TextSpan(
                            text: 'Translate Every \n',
                            style: TextStyle(
                              fontSize: 32.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                          TextSpan(
                            text: 'Type Word \n',
                            style: TextStyle(
                              fontSize: 32.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                          WidgetSpan(
                            child: SizedBox(height: 35.0),
                          ),
                          TextSpan(
                            text: 'Help You Communicate In \n',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w300,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                          TextSpan(
                            text: 'Different Languages',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w300,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Richtext ends here

                    // Container for arrow forward in a padding
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),

                      // Container for arrow forward
                      child: GestureDetector(
                        onTap: widget.showPromptScreen,
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFCCCC).withOpacity(0.3),
                            shape: BoxShape.circle,
                          ),
                          child: Container(
                            height: 50.0,
                            width: 50.0,
                            padding: const EdgeInsets.all(2.0),
                            decoration: const BoxDecoration(
                              color: Color(0xFFFFFFFF),
                              shape: BoxShape.circle,
                            ),

                            // Arrow forward centered
                            child: const Center(
                              // Arrow forward
                              child: Icon(
                                Icons.arrow_forward,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // Column ends here
              ),
            ),
          ],
        ),
        // Column ends here
      ),
    );
  }
}
