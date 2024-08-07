import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LanguageDropdown extends StatefulWidget {
  final ValueChanged<String?> onLanguageChanged;

  const LanguageDropdown({Key? key, required this.onLanguageChanged})
      : super(key: key);

  @override
  State<LanguageDropdown> createState() => _LanguageDropdownState();
}

class _LanguageDropdownState extends State<LanguageDropdown> {
  final List<Map<String, String>> languageData = [
    {
      'countryLanguage': 'English - US',
      'countryImage': 'assets/images/usa.png'
    },
    {
      'countryLanguage': 'English - UK',
      'countryImage': 'assets/images/britain.png'
    },
    {'countryLanguage': 'Russian', 'countryImage': 'assets/images/russia.png'},
    {'countryLanguage': 'Italian', 'countryImage': 'assets/images/italy.png'},
    {'countryLanguage': 'German', 'countryImage': 'assets/images/germany.png'},
    {'countryLanguage': 'French', 'countryImage': 'assets/images/france.png'},
    {'countryLanguage': 'Spanish', 'countryImage': 'assets/images/spain.png'},
  ];

  String? selectedCountry;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: const Color(0xFFFFFFFF),
        border: Border.all(
          color: const Color(0xFF6D1B7B).withOpacity(0.8),
          width: 0.1,
        ),
      ),
      child: DropdownButton<String>(
        value: selectedCountry,
        hint: Text(
          "Select Language",
          style: GoogleFonts.poppins(
            fontSize: 14.0,
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
        dropdownColor: const Color(0xFFFFFFFF),
        items: languageData.map((country) {
          return DropdownMenuItem<String>(
            value: country['countryLanguage'],
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipOval(
                  child: Image.asset(
                    country['countryImage']!,
                    width: 24,
                    height: 24,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  country['countryLanguage']!,
                  style: GoogleFonts.poppins(
                    fontSize: 14.0,
                    color: selectedCountry == country['countryLanguage']
                        ? const Color(0xFF000000)
                        : const Color(0xFF6D1B7B).withOpacity(0.8),
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
          widget.onLanguageChanged(newValue);
        },
      ),
    );
  }
}
