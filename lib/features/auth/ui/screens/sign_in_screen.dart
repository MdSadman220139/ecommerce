import 'package:ecommerce/features/auth/ui/widgets/app_logo_widget.dart';
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
              Text("Welcome Back", style: textTheme.titleLarge),
              const SizedBox(height: 8),
              Text(
                "Enter your email and password  ",
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
              const SizedBox(height: 16),
              TextFormField(decoration: InputDecoration(hintText: "Email")),
              const SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(hintText: "Password"),
                obscureText: true,
              ),
              const SizedBox(height: 16),
              ElevatedButton(onPressed: () {}, child: Text("Sign In")),
            ],
          ),
        ),
      ),
    );
  }
}
