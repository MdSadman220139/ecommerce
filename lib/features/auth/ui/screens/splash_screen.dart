import 'package:ecommerce/app/app_configuration.dart';
import 'package:ecommerce/app/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const String name = '/';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              Spacer(),
              SvgPicture.asset('assets/images/logo.svg', width: 128),
              Spacer(),
              CircularProgressIndicator(),
              Text('Version ${AppConfiguration.currentAppVersion}'),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
