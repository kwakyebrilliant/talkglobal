import 'package:flutter/material.dart';

class TranslateTo extends StatefulWidget {
  const TranslateTo({super.key});

  @override
  State<TranslateTo> createState() => _TranslateToState();
}

class _TranslateToState extends State<TranslateTo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
            ],
          ),
        ),
      ],
    );
  }
}
