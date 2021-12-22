import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:joma/screens/screen_home.dart';
import 'package:joma/screens/screen_login.dart';
import 'package:joma/utils/user_simple_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserSimplePreferences.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:Center(
      child: AnimatedSplashScreen(
      splash: Image.asset(
      'assets/images/Logo.png',
      ),
      nextScreen: ScreenLogin(),
      splashTransition: SplashTransition.rotationTransition,
      backgroundColor: Colors.amber,
      ),

    //home: const ScreenLogin(),
      //home: const HomeScreen(),
    ),
    );
  }
}

