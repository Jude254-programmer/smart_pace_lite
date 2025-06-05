import 'package:flutter/material.dart';

import '../../../common_widgets/buttons/modern_button.dart';
import '../../../constants/colors.dart';
import '../../../constants/image_string.dart';
import '../../../constants/text_string.dart';


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
          padding: EdgeInsets.only(
              top: 50, left: 20, right: 20, bottom: 30
          ),
          child: Column(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          tWelcomeScreenImage,
                          height: size.height * 0.45,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ShaderMask(
                      shaderCallback:
                          (bounds) => LinearGradient(
                        colors: [
                          tSecondaryColor,
                          tSecondaryColor.withOpacity(0.8),
                        ],
                      ).createShader(bounds),
                      child: Text(
                        tWelcomeTitle,
                        style: TextStyle(
                          wordSpacing: -0.5,
                          fontSize: size.width * 0.08,
                          fontWeight: FontWeight.w700,
                          color: wG1,
                          letterSpacing: -0.5,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20),
                      child: Text(
                        textAlign: TextAlign.center,
                        tWelcomeSubtitle,
                        style: TextStyle(
                          fontSize: size.width * 0.042,
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                          letterSpacing: 0.2,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ModernButton(
                      text: tSignUp,
                      isPrimary: true,
                      onPressed: () {},
                      color: tSecondaryColor,
                    ),

                    const SizedBox(height: 16),

                    ModernButton(
                      text: tLogIn,
                      isPrimary: false,
                      onPressed: () {},
                      color: tSecondaryColor,
                    ),
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
