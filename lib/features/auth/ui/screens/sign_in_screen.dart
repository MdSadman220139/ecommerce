import 'package:ecommerce/core/extension/localization_extension.dart';
import 'package:ecommerce/features/auth/ui/widgets/app_logo_widget.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});
  static const String name = '/sign-in';

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme; // variable

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 68),
              Applogo(),
              const SizedBox(height: 24),
              Text(
                context.localization.welcomeBack,
                style: textTheme.titleLarge,
              ),
              const SizedBox(height: 8),
              Text(
                context.localization.enterYourPasswordandEmail,
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  hintText: context.localization.email,
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                  hintText: context.localization.password,
                ),
                obscureText: true,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  FirebaseCrashlytics.instance.log('Sign In button pressed');
                  throw Exception('Test Crash'); // Test Crash for Crashlytics
                },
                child: Text(context.localization.signIn),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
