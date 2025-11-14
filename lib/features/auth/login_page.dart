import 'package:flutter/material.dart';
import '../shell/main_shell_page.dart';

class LoginPage extends StatefulWidget {
  static const routeName = '/login';

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _userCtrl = TextEditingController();
  final TextEditingController _passCtrl = TextEditingController();

  @override
  void dispose() {
    _userCtrl.dispose();
    _passCtrl.dispose();
    super.dispose();
  }

  void _onLogin() {
    // TODO: validasi & auth ke backend
    Navigator.pushReplacementNamed(context, MainShellPage.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              const Text(
                'Welcome Back',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text('Login to continue as Salesman'),
              const SizedBox(height: 32),
              TextField(
                controller: _userCtrl,
                decoration: const InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _passCtrl,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _onLogin,
                  child: const Text('Login'),
                ),
              ),
              const Spacer(),
              const Align(
                alignment: Alignment.bottomCenter,
                child: Text('v0.1.0', style: TextStyle(color: Colors.grey)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
