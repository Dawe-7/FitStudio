import 'package:fit_studio/constants/colors.dart';
import 'package:fit_studio/routes/app.routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Fit Studio',
        debugShowCheckedModeBanner: false,
        navigatorKey: navigatorKey,
        themeMode: ThemeMode.system,
        theme: ThemeData(
            colorSchemeSeed: redColor,
            brightness: Brightness.light,
            textTheme:
            GoogleFonts.openSansTextTheme(Theme.of(context).textTheme).apply(
              bodyColor: blackColor,
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  elevation: 1,
                  textStyle: GoogleFonts.openSans(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                  shape: const StadiumBorder()),
            )),
        darkTheme: ThemeData(
            colorSchemeSeed: redColor,
            brightness: Brightness.dark,
            textTheme:
            GoogleFonts.openSansTextTheme(Theme.of(context).textTheme).apply(
              bodyColor: blackColor,
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  elevation: 1,
                  textStyle: GoogleFonts.openSans(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                  shape: const StadiumBorder()),
            )),
        initialRoute: AppRoutes.OnboardingRoute,
        routes: AppRoutes.routes,
    );
  }
}
