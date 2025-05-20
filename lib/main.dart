import 'package:flutter/material.dart';
import 'package:lazy_read_app/core/constants/app_strings.dart';
import 'package:lazy_read_app/core/routes/router_imports.dart';
import 'package:lazy_read_app/core/themes/app_themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: AppStrings.appName,
      theme: AppThemes.light,
      darkTheme: AppThemes.dark,
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
    );
  }
}
