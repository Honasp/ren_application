import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ren_application/screens/AuthScreen.dart';
import 'package:ren_application/theme/model_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ModelTheme(),
      child: Consumer<ModelTheme>(
          builder: (context, ModelTheme themeNotifier, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: themeNotifier.isDark
              ? ThemeData(
                  brightness: Brightness.dark,
                )
              : ThemeData(
                  brightness: Brightness.light,
                  primaryColor: Colors.blue[700],
                  primarySwatch: Colors.blue),
          debugShowCheckedModeBanner: false,
          home: const AuthScreen(),
        );
      }),
    );
  }
}
