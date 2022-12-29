import 'package:flutter/material.dart';
import 'package:xfunding/screens/signin/signin_screen.dart';
import 'package:xfunding/screens/signin/utils.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SignInScreen(),
      ),
    );
  }
}
