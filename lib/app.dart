import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'features/auth/splash_page.dart';
import 'features/auth/login_page.dart';
import 'features/shell/main_shell_page.dart';

class SalesApp extends StatelessWidget {
  const SalesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sales App',
      theme: buildAppTheme(),
      debugShowCheckedModeBanner: false,
      initialRoute: SplashPage.routeName,
      routes: {
        SplashPage.routeName: (_) => const SplashPage(),
        LoginPage.routeName: (_) => const LoginPage(),
        MainShellPage.routeName: (_) => const MainShellPage(),
      },
    );
  }
}
