import 'package:flutter/material.dart';
import 'package:myapp/config/constants/environment.dart'; // Use the Environment class

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text( Environment.theMoviedbKey ), // Access the key through the Environment class
      ),
    );
  }
}
