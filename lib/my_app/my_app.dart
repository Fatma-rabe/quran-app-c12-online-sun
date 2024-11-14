
import 'package:flutter/material.dart';
import 'package:quran_app_c12_online_sun/config/theme/my_theme.dart';
import 'package:quran_app_c12_online_sun/core/routes_manager.dart';
import 'package:quran_app_c12_online_sun/presentation/screens/home/home_screen.dart';
import 'package:quran_app_c12_online_sun/presentation/screens/quran_details_screen/quran_details_screen.dart';
import 'package:quran_app_c12_online_sun/presentation/screens/splash/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
// TODO i will add dark theme later
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      routes: {
        RoutesManager.homeRoute: (_) => HomeScreen(),
        RoutesManager.splashRoute: (_) => const SplashScreen(),
        RoutesManager.quranDetailsRoute: (_) => QuranDetailsScreen(),
      },
      initialRoute: RoutesManager.splashRoute,
    );
  }
}
