import 'package:flutter/material.dart';
import 'package:riverpod_boilerplate/app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
