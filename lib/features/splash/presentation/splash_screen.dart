import 'package:lottie/lottie.dart';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      if (mounted) {
        Navigator.pushReplacementNamed(context, '/SignAccount');
        // Navigator.pushReplacement(
        //   context,
        //   MaterialPageRoute(builder: (context) => AddAccount()),
        // );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset('assets/animations/NetflixLogoSwoop.json'),
    );
  }
}
