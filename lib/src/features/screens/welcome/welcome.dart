import 'package:flutter/material.dart';
import 'package:smart_pace_lite/src/constants/text_string.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(tWelcomeTitle, style: Theme.of(context).textTheme.headlineMedium,)),
    );
  }
}
