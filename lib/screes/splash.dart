import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:music_app/screes/homeView.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  late Future<void> _imageLoader;

  @override
  void initState() {
    super.initState();
    // Preload the image
    _imageLoader = _preloadImage();

    // Navigate to HomeClass after 5 seconds
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
      context,MaterialPageRoute(builder: (context)=>HomePage())
      );
    });
  }

  Future<void> _preloadImage() async {
    // Preload the image to avoid initial blank screen
    await precacheImage(AssetImage("assets/img/splash1.jpg"), context);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: _imageLoader,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          // Display the UI once the image is loaded
          return Scaffold(
            backgroundColor: Colors.teal,
            body: Stack(
              children: [
                // Blurred Background Image
                Positioned.fill(
                  child: Image.asset(
                    "assets/img/splash1.jpg", // Replace with your background image path
                    fit: BoxFit.cover,
                  ),
                ),
                // Positioned.fill(
                //   child: BackdropFilter(
                //     filter: ImageFilter.blur(sigmaX: 2,sigmaY: 2
                //     ), // Moderate blur
                //     child: Container(
                //       color: const Color.fromARGB(255, 48, 48, 48).withOpacity(0.1), // Slight dark overlay
                //     ),
                //   ),
                // ),
                // Centered Lottie Animation
             
              ],
            ),
          );
        } else {
          // Display a loading indicator while the image is loading
          return Scaffold(
            body: Container(
              color: Colors.black, // Use a fallback color for the loading phase
              child: Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              ),
            ),
          );
        }
      },
    );
  }
}

