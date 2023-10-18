import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../authentication/login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Get.to(LoginScreen());
    });
    return Scaffold(
      body: Image(
        image: AssetImage("images/loadingscreen.png"),
      ),
    );
  }
}
