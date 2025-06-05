import 'package:flutter/material.dart';
import 'package:smart_pace_lite/src/common_widgets/buttons/modern_button.dart';
import 'package:smart_pace_lite/src/constants/image_string.dart';
import 'package:smart_pace_lite/src/constants/text_string.dart';

import '../../../constants/colors.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [wG1, wG2, wG3],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0, left: 20, right: 20),
          child: Column(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  width: double.infinity,
                  child: Image.asset(tWelcomeScreenImage),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Text(
                      tWelcomeTitle,
                      style: TextStyle(
                        fontSize: size.width * 0.08,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 5,),
                    Center(
                      child: Text(
                        tWelcomeSubtitle,
                        style: TextStyle(
                          fontSize: size.width * 0.042,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 30,),
                    Expanded(child: Column(children: [
                      ModernButton(text: tSignUp, isPrimary: true, onPressed: (){}, color: tSecondaryColor),
                      const SizedBox(height: 15,),

                      ModernButton(text: tLogIn, isPrimary: false, onPressed: (){}, color: tSecondaryColor)
                    ],))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
