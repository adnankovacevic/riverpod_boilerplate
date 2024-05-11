import 'package:flutter/material.dart';
import 'package:riverpod_boilerplate/features/root/views/root_view.dart';
import 'package:riverpod_boilerplate/shared/themes/app_themes.dart';
import 'package:riverpod_boilerplate/shared/widgets/keyboard.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      child: MaterialApp(
        title: 'Riverpod Boilerplate',
        debugShowCheckedModeBanner: false,
        theme: const LightAppTheme().themeData, // Use LightAppTheme
        darkTheme: ThemeData.dark(useMaterial3: true),
        home: const RootView(),
      ),
    );
  }
}
