import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:getasan_apps/features/admin/dashboard/presentation/dashboard.dart';
import 'package:getasan_apps/features/dashboard/presentation/dashboard.dart';
import 'package:getasan_apps/features/login/presentation/login.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          textTheme: GoogleFonts.nunitoSansTextTheme(),
        ),

        // home: LoginScreen(),
        home: LoginScreen());
  }
}
