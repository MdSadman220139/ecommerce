import 'dart:ui';

import 'package:ecommerce/app/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
Future<void> main() async {

WidgetsFlutterBinding.ensureInitialized();
  
await Firebase.initializeApp();
// framework errors
FlutterError.onError = (errorDetails) {
      FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
    };
//all errors
PlatformDispatcher.instance.onError = (error, stack) {
      FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      return true;
    };
  runApp(const ecommerceApp());
}
