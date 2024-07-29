import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final VoidCallback showPromptScreen;
  const HomeScreen({super.key, required this.showPromptScreen});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF6D1B7B),
              Color(0xFF000000),
            ],
          ),

          // Background image here
          image: DecorationImage(
            image: AssetImage(
              "assets/images/worldmap.png",
            ),
            fit: BoxFit.cover,
          ),
        ),

        // Column starts here
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // First Expanded
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
              ),
            ),

            // Second Expanded
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Text('data'),
              ),
            ),
          ],
        ),
        // Column ends here
      ),
    );
  }
}
