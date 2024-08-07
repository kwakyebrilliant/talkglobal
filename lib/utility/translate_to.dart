import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

class TranslateTo extends StatefulWidget {
  final String translatedText;
  const TranslateTo({super.key, required this.translatedText});

  @override
  State<TranslateTo> createState() => _TranslateToState();
}

class _TranslateToState extends State<TranslateTo> {
  // Method to copy text to clipboard
  void _copyToClipboard(String text) {
    Clipboard.setData(ClipboardData(text: text)).then((_) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Copied to clipboard')),
      );
    });
  }

  final FlutterTts _flutterTts = FlutterTts();

  Future<void> _handleVolumeUpTap() async {
    final text = widget.translatedText;
    await _flutterTts.speak(text);
  }

  @override
  void dispose() {
    _flutterTts.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Text(
              widget.translatedText,
              style: GoogleFonts.poppins(
                fontSize: 16.0,
                fontWeight: FontWeight.w300,
                color: const Color(0xFF000000),
              ),
            ),
          ),
        ),
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
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // Copy icon with gesture detector
              GestureDetector(
                onTap: () => _copyToClipboard(widget.translatedText),
                child: Icon(
                  Icons.copy_all_outlined,
                  color: const Color(0xFF6D1B7B).withOpacity(0.8),
                ),
              ),
              const SizedBox(
                width: 8.0,
              ),
              GestureDetector(
                onTap: _handleVolumeUpTap,
                child: Icon(
                  Icons.volume_up_outlined,
                  color: const Color(0xFF6D1B7B).withOpacity(0.8),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
