import 'package:ecommerce/app_routes.dart';
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
      initialRoute: '/',
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}