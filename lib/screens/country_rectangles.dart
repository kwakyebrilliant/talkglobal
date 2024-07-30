import 'package:flutter/material.dart';
import 'dart:math';
import 'package:google_fonts/google_fonts.dart';

class CountryRectangles extends StatefulWidget {
  const CountryRectangles({super.key});

  @override
  State<CountryRectangles> createState() => _CountryRectanglesState();
}

class _CountryRectanglesState extends State<CountryRectangles> {
  // Random object to generate random numbers
  final Random random = Random();

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

  // Variables to store the selected country and background color
  String? selectedCountry;
  Color? backgroundColor;

  @override
  void initState() {
    super.initState();
    // Randomize the selected country and background color on initialization
    _randomize();
  }

  // Method to randomize the selected country and background color
  void _randomize() {
    setState(() {
      selectedCountry =
          countryData[random.nextInt(countryData.length)]['countryName'];
      backgroundColor =
          Color((random.nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    // Method to refresh the widget by randomizing the selected country and background color
    return RefreshIndicator(
      onRefresh: () async {
        _randomize();
      },
      child: Wrap(
        spacing: 8.0,
        runSpacing: 8.0,

        // Iterate over the list of country data to create a list of cards
        children: countryData.map((country) {
          // Check if the current country is the selected one
          bool isSelected = country['countryName'] == selectedCountry;
          return Card(
            elevation: 4,

            // Set the card color based on whether it is selected or not
            color: isSelected ? backgroundColor : const Color(0xFFFFFFFF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
              side: BorderSide(
                color: isSelected
                    ? Colors.transparent
                    : const Color(0xFF6D1B7B).withOpacity(0.8),
                width: 0.4,
              ),
            ),
            child: Container(
              width: 180.0,
              padding: const EdgeInsets.symmetric(
                vertical: 20.0,
                horizontal: 15.0,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Display the country image
                  Image.asset(
                    country['countryImage']!,
                    height: 20,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 8.0),

                  // Display the country name using Google Fonts
                  Text(
                    country['countryName']!,
                    style: GoogleFonts.poppins(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w300,
                      color: isSelected
                          ? const Color(0xFFFFFFFF)
                          : const Color(0xFF000000),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
