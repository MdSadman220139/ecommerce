import 'package:ecommerce/app/app_colours.dart';
import 'package:ecommerce/app/app_routes.dart';
import 'package:ecommerce/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

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
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: Locale('bn'),
      supportedLocales: [
        Locale('en'), // English
        Locale('bn'), // Bengali
      ],
    );
  }
}
