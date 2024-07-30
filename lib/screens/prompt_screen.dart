import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:talkglobal/utility/language_dropdown.dart';

class PromptScreen extends StatefulWidget {
  final VoidCallback showHomeScreen;
  const PromptScreen({super.key, required this.showHomeScreen});

  @override
  State<PromptScreen> createState() => _PromptScreenState();
}

class _PromptScreenState extends State<PromptScreen> {
  // List of maps containing country languages and their corresponding image paths
  final List<Map<String, String>> languageData = [
    {'countryLanguage': 'USA', 'countryImage': 'assets/images/usa.png'},
    {'countryLanguage': 'Russia', 'countryImage': 'assets/images/russia.png'},
    {'countryLanguage': 'Italy', 'countryImage': 'assets/images/italy.png'},
    {'countryLanguage': 'Germany', 'countryImage': 'assets/images/germany.png'},
    {'countryLanguage': 'France', 'countryImage': 'assets/images/france.png'},
    {'countryLanguage': 'China', 'countryImage': 'assets/images/china.png'},
    {'countryLanguage': 'England', 'countryImage': 'assets/images/britain.png'},
    {'countryLanguage': 'Saudi', 'countryImage': 'assets/images/arabic.png'},
  ];

  String? selectedCountry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      // Container for all contents
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0, left: 16.0, right: 16.0),

        // Column starts here
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Row for translate text and send icon
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Translate text in a padding
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),

                  // Translate text here
                  child: Text(
                    "Translate",
                    style: GoogleFonts.poppins(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF000000),
                    ),
                  ),
                ),

                // Container for send icon
                Container(
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFF6D1B7B).withOpacity(0.3),
                    shape: BoxShape.circle,
                  ),
                  child: Container(
                    height: 30.0,
                    width: 30.0,
                    padding: const EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 0.1,
                        color: const Color(0xFFFFCCCC).withOpacity(0.8),
                      ),
                    ),

                    // Send centered
                    child: Center(
                      // Send forward
                      child: Transform.rotate(
                        angle: -0.8,
                        child: Icon(
                          Icons.send,
                          color: const Color(0xFF6D1B7B).withOpacity(0.3),
                          size: 20.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // Container for what to translate in padding
            Padding(
              padding: const EdgeInsets.only(top: 8.0),

              // Container for what to translate
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(
                    color: const Color(0xFF6D1B7B).withOpacity(0.8),
                    width: 0.1,
                  ),
                ),

                // Column for translate contents
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Textformfield for text content to translate
                    TextFormField(
                      maxLines: 10,
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        labelStyle: GoogleFonts.poppins(
                          color: const Color(0xFF000000),
                          fontSize: 16.0,
                        ),
                      ),
                    ),

                    // Bottom container for langauge dropdown and mic icon
                    Container(
                      padding: const EdgeInsets.only(top: 12.0),
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            color: const Color(0xFF6D1B7B).withOpacity(0.8),
                            width: 0.1,
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Dropdown for country selection
                          const LanguageDropdown(),
                          Row(
                            children: [
                              Icon(
                                Icons.mic_outlined,
                                color: const Color(0xFF6D1B7B).withOpacity(0.8),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Swap icon in a container wrapped in a padding
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),

              // Swap icon in a container
              child: Container(
                height: 50.0,
                width: 50.0,
                padding: const EdgeInsets.all(2.0),
                decoration: const BoxDecoration(
                  color: Color(0xFF000000),
                  shape: BoxShape.circle,
                ),

                // Swap icon centered
                child: const Center(
                  // Swap icon
                  child: Icon(
                    Icons.swap_horiz_rounded,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),

            // Container for what to translate
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(
                  color: const Color(0xFF6D1B7B).withOpacity(0.8),
                  width: 0.1,
                ),
              ),

              // Column for translate contents
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Textformfield for text content to translate
                  TextFormField(
                    maxLines: 10,
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      labelStyle: GoogleFonts.poppins(
                        color: const Color(0xFF000000),
                        fontSize: 16.0,
                      ),
                    ),
                  ),

                  // Bottom container for langauge dropdown and mic icon
                  Container(
                    padding: const EdgeInsets.only(top: 12.0),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: const Color(0xFF6D1B7B).withOpacity(0.8),
                          width: 0.1,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Dropdown for country selection
                        const LanguageDropdown(),
                        Row(
                          children: [
                            Icon(
                              Icons.mic_outlined,
                              color: const Color(0xFF6D1B7B).withOpacity(0.8),
                            ),
                            const SizedBox(
                              width: 8.0,
                            ),
                            Icon(
                              Icons.volume_up_outlined,
                              color: const Color(0xFF6D1B7B).withOpacity(0.8),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
