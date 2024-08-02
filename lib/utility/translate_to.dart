import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TranslateTo extends StatefulWidget {
  const TranslateTo({super.key});

  @override
  State<TranslateTo> createState() => _TranslateToState();
}

class _TranslateToState extends State<TranslateTo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 6 * 27.0,
          child: Text(
            'Here we are in this',
            maxLines: 6,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.poppins(
              fontSize: 16.0,
              fontWeight: FontWeight.w300,
              color: const Color(0xFF000000),
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
              Icon(
                Icons.copy_all_outlined,
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
        ),
      ],
    );
  }
}
