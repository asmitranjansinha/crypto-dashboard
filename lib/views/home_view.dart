import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  HomeViewState createState() => HomeViewState();
}

class HomeViewState extends State<HomeView> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Main content
          Container(
            color: Colors.white, // Example main content color
            child: const Center(
              child: Text(
                'Main Content',
                style: TextStyle(fontSize: 24.0),
              ),
            ),
          ),
          // Drawer
          MouseRegion(
            onEnter: (_) => setState(() => _isHovered = true),
            onExit: (_) => setState(() => _isHovered = false),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              child: SizedBox(
                width: _isHovered ? 200 : 50,
                child: Container(
                  color: Colors.black,
                  // Add your drawer content here
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
