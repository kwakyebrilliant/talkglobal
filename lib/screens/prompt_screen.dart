import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PromptScreen extends StatefulWidget {
  final VoidCallback showHomeScreen;
  const PromptScreen({super.key, required this.showHomeScreen});

  @override
  State<PromptScreen> createState() => _PromptScreenState();
}

class _PromptScreenState extends State<PromptScreen> {
  // List of maps containing country names and their corresponding image paths
  final List<Map<String, String>> countryData = [
    {'countryName': 'USA', 'countryImage': 'assets/images/usa.png'},
    {'countryName': 'Russia', 'countryImage': 'assets/images/russia.png'},
    {'countryName': 'Italy', 'countryImage': 'assets/images/italy.png'},
    {'countryName': 'Germany', 'countryImage': 'assets/images/germany.png'},
    {'countryName': 'France', 'countryImage': 'assets/images/france.png'},
    {'countryName': 'China', 'countryImage': 'assets/images/china.png'},
    {'countryName': 'England', 'countryImage': 'assets/images/britain.png'},
    {'countryName': 'Saudi', 'countryImage': 'assets/images/arabic.png'},
  ];

  String? selectedCountry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Container for all contents
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

        // Padding around contents
        child: Padding(
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
                        color: const Color(0xFFFFFFFF),
                      ),
                    ),
                  ),

                  // Container for send icon
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

                      // Send centered
                      child: Center(
                        // Send forward
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
              ),
              const SizedBox(height: 20),

              // Dropdown for country selection
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFCCCC).withOpacity(0.3),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: const Color(0xFFFFFFFF).withOpacity(0.3),
                    border: Border.all(
                      color: const Color(0xFFFFCCCC).withOpacity(0.8),
                      width: 0.1,
                    ),
                  ),
                  // Dropdown for country selection
                  child: DropdownButton<String>(
                    value: selectedCountry,
                    hint: Text(
                      "Select Country",
                      style: GoogleFonts.poppins(
                        fontSize: 16.0,
                        color: const Color(0xFFFFFFFF),
                      ),
                    ),
                    icon: const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                    underline: Container(
                      height: 2,
                      color: Colors.transparent,
                    ),
                    dropdownColor: const Color(0xFF6D1B7B),
                    items: countryData.map((country) {
                      return DropdownMenuItem<String>(
                        value: country['countryName'],
                        child: Row(
                          children: [
                            Image.asset(
                              country['countryImage']!,
                              width: 24,
                              height: 24,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              country['countryName']!,
                              style: GoogleFonts.poppins(
                                fontSize: 16.0,
                                color: const Color(0xFFFFFFFF),
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        selectedCountry = newValue;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
