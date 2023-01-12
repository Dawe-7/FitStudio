import 'dart:ui';

import 'package:fit_studio/routes/app.routes.dart';
import 'package:fit_studio/screens/sign_up_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final brightness = colorScheme.brightness;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/bg.jpg",
                    ),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.7,
                child: Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(24.0),
                  decoration:  BoxDecoration(
                    color: colorScheme.background,
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(35.0),
                          topLeft: Radius.circular(35.0)),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Welcome to FitStudio",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunito(
                          fontSize: 24,
                          //fontWeight: FontWeight.w500,
                          color: colorScheme.onBackground,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "Shop for all your clothing needs at the convenience of your home. FitStudio’s AR feature allows users to interact with 3D models of wearable items.",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.openSans(
                            fontSize: 14,
                            fontWeight:
                                Theme.of(context).textTheme.caption!.fontWeight,
                            color: colorScheme.onBackground,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24.0,
                          vertical: 8,
                        ),
                        child: SizedBox(
                          height: 50,
                          width: 320,
                          child: ElevatedButton(
                            onPressed: () async {
                              Navigator.pushNamed(
                                  context, AppRoutes.SignUpRoute);
                            },
                            child: Text("Get Started",
                                style: TextStyle(
                                  color: colorScheme.onPrimary,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
