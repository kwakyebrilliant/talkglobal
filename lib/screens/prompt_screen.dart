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
  String? selectedCountryFrom;
  String? selectedCountryTo;

  void _handleLanguageChangeFrom(String? newCountry) {
    setState(() {
      selectedCountryFrom = newCountry;
    });
  }

  void _handleLanguageChangeTo(String? newCountry) {
    setState(() {
      selectedCountryTo = newCountry;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F0F0),
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0, left: 16.0, right: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 10.0),
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
                  Text(
                    "Text Translation",
                    style: GoogleFonts.poppins(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w300,
                      color: const Color(0xFF000000),
                    ),
                  ),
                  const Icon(
                    Icons.text_fields,
                    color: Color(0xFF000000),
                    size: 24.0,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LanguageDropdown(
                      onLanguageChanged: _handleLanguageChangeFrom),
                  Icon(
                    Icons.swap_horiz_rounded,
                    color: const Color(0xFF6D1B7B).withOpacity(0.3),
                  ),
                  LanguageDropdown(onLanguageChanged: _handleLanguageChangeTo),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: GoogleFonts.poppins(
                        height: 1.6,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Translate From ',
                          style: GoogleFonts.poppins(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w300,
                            color: const Color(0xFF000000),
                          ),
                        ),
                        if (selectedCountryFrom != null)
                          TextSpan(
                            text: '$selectedCountryFrom',
                            style: GoogleFonts.poppins(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF000000),
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const TranslateContainer(),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: GoogleFonts.poppins(
                        height: 1.6,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Translate To ',
                          style: GoogleFonts.poppins(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w300,
                            color: const Color(0xFF000000),
                          ),
                        ),
                        if (selectedCountryTo != null)
                          TextSpan(
                            text: '$selectedCountryTo',
                            style: GoogleFonts.poppins(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF000000),
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const TranslateContainer(),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 50.0,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFF6D1B7B).withOpacity(0.6),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.chat_bubble_rounded,
                          color: Color(0xFFF0F0F0),
                        ),
                        Text(
                          'Text',
                          style: GoogleFonts.poppins(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFFF0F0F0),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color(0xFF6D1B7B).withOpacity(0.3),
                          border: Border.all(
                            width: 0.1,
                            color: const Color(0xFFFFFFFF),
                          ),
                          shape: BoxShape.circle),
                      child: IconButton(
                        onPressed: () {},
                        icon: Transform.rotate(
                          angle: -1.56,
                          child: const Icon(
                            Icons.send,
                            color: Color(0xFFFFFFFF),
                            size: 40.0,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.mic_none_outlined,
                          color: Color(0xFFFFFFFF),
                        ),
                        Text(
                          'Speech',
                          style: GoogleFonts.poppins(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w300,
                            color: const Color(0xFFF0F0F0),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
