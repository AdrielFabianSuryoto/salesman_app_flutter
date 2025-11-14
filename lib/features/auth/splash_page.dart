import 'package:flutter/material.dart';
import '../shell/main_shell_page.dart';
import 'login_page.dart';

class SplashPage extends StatefulWidget {
  static const routeName = '/';

  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _bootstrap();
  }

  Future<void> _bootstrap() async {
    // TODO: cek token, load cache, dsb.
    await Future.delayed(const Duration(seconds: 1));

    if (!mounted) return;

    // Untuk sekarang: selalu ke Login
    Navigator.pushReplacementNamed(context, LoginPage.routeName);

    // Nanti kalau sudah ada auth:
    // if (loggedIn) go MainShellPage, else LoginPage
    // Navigator.pushReplacementNamed(context, MainShellPage.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FlutterLogo(size: 80),
            SizedBox(height: 16),
            Text('Sales App', style: TextStyle(fontSize: 20)),
            SizedBox(height: 16),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
