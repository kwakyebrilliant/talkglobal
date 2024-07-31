import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:talkglobal/utility/language_dropdown.dart';
import 'package:talkglobal/utility/translate_container.dart';

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
      backgroundColor: const Color(0xFFF0F0F0),
      // Container for all contents
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0, left: 16.0, right: 16.0),

        // Column starts here
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Row for translate text and send icon
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: const Color(0xFF6D1B7B).withOpacity(0.8),
                    width: 0.2,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Translate text
                  Text(
                    "Text Translation",
                    style: GoogleFonts.poppins(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w300,
                      color: const Color(0xFF000000),
                    ),
                  ),

                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.mic_rounded,
                      color: Color(0xFF000000),
                      size: 24.0,
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Dropdown for country selection
                  const LanguageDropdown(),

                  // Swap icon here
                  Icon(
                    Icons.swap_horiz_rounded,
                    color: const Color(0xFF6D1B7B).withOpacity(0.3),
                  ),

                  // Dropdown for country selection
                  const LanguageDropdown(),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Translate From",
                    style: GoogleFonts.poppins(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w300,
                      color: const Color(0xFF000000),
                    ),
                  ),
                ],
              ),
            ),

            // Container for what to translate in padding
            const TranslateContainer(),

            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Translate To",
                    style: GoogleFonts.poppins(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w300,
                      color: const Color(0xFF000000),
                    ),
                  ),
                ],
              ),
            ),

            // Container for what to translate in padding
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: const Color(0xFFFFFFFF),
                  border: Border.all(
                    color: const Color(0xFF6D1B7B).withOpacity(0.8),
                    width: 0.2,
                  ),
                ),

                // Column for translate contents
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Textformfield for text content to translate
                    TextFormField(
                      maxLines: 6,
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
                            width: 0.2,
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
            ),

            // Container for arrow forward in a padding
            Padding(
              padding: const EdgeInsets.only(top: 30.0),

              // Container for arrow forward in GestureDetector
              child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: const Color(0xFF6D1B7B).withOpacity(0.3),
                  shape: BoxShape.circle,
                ),

                // Container for arrow forward
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  padding: const EdgeInsets.all(2.0),
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    shape: BoxShape.circle,
                  ),

                  // Arrow forward centered
                  child: Center(
                    // Arrow forward
                    child: Transform.rotate(
                      angle: -1.56,
                      child: Icon(
                        Icons.send,
                        color: const Color(0xFF6D1B7B).withOpacity(0.3),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
