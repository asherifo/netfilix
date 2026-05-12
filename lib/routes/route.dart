import 'package:flutter/material.dart';
import 'package:netfilix/features/details/presentation/detailmovie.dart';
import 'package:netfilix/features/home/presentation/screen/add_account_page.dart';
import 'package:netfilix/features/home/presentation/screen/home_page.dart';
import 'package:netfilix/features/splash/presentation/splash_screen.dart';

// ignore: avoid_types_as_parameter_names
Map<String, WidgetBuilder> routes = {
  '/HomePage': (context) => const HomePage(),
  '/SplashScreen': (context) => const SplashScreen(),
  '/SignAccount': (context) => const AddAccount(),
  '/detailMovie': (context) => const Detailmovie(),
};
