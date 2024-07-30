import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LanguageDropdown extends StatefulWidget {
  const LanguageDropdown({super.key});

  @override
  State<LanguageDropdown> createState() => _LanguageDropdownState();
}

class _LanguageDropdownState extends State<LanguageDropdown> {
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
    return // Dropdown for country selection
        Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: const Color(0xFF6D1B7B).withOpacity(0.3),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: const Color(0xFFFFFFFF),
            border: Border.all(
              color: const Color(0xFF6D1B7B).withOpacity(0.8),
              width: 0.1,
            ),
          ),
          // Dropdown for country selection
          child: DropdownButton<String>(
            value: selectedCountry,
            hint: Text(
              "Select Language",
              style: GoogleFonts.poppins(
                fontSize: 16.0,
                color: const Color(0xFF000000),
              ),
            ),
            icon: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: const Color(0xFF6D1B7B).withOpacity(0.3),
              ),
            ),
            underline: Container(
              color: Colors.transparent,
            ),
            dropdownColor: const Color(0xFF6D1B7B),
            items: languageData.map((country) {
              return DropdownMenuItem<String>(
                value: country['countryLanguage'],
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
                      country['countryLanguage']!,
                      style: GoogleFonts.poppins(
                        fontSize: 16.0,
                        color: selectedCountry == country['countryLanguage']
                            ? const Color(0xFF000000)
                            : const Color(0xFFFFFFFF),
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
    );
  }
}
