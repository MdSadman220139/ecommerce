import 'package:ecommerce/app/app_colours.dart';
import 'package:ecommerce/app/app_routes.dart';
import 'package:flutter/material.dart';

class ecommerceApp extends StatefulWidget {
  const ecommerceApp({super.key});

  @override
  State<ecommerceApp> createState() => _ecommerceAppState();
}

class _ecommerceAppState extends State<ecommerceApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: ThemeData(
        colorSchemeSeed: AppColors.themeColor,
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}
