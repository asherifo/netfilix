import 'package:flutter/material.dart';
import 'package:netfilix/features/home/presentation/screen/home_page.dart';
import 'package:netfilix/features/home/presentation/screen/add_account_page.dart';
import 'package:netfilix/features/splash/presentation/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'NETFILIX',
      color: Colors.white,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      themeMode: ThemeMode.dark,

      initialRoute: '/SplashScreen',

      routes: <String, WidgetBuilder>{
        '/HomePage': (context) => HomePage(),
        '/SplashScreen': (context) => SplashScreen(),
        '/SignAccount': (context) => AddAccount(),
      },
    );
  }
}
