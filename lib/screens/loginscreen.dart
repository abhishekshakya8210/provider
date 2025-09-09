import 'package:defunder/provider/loginprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final loginprovider = Provider.of<Loginprovider>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailcontroller,
              decoration: const InputDecoration(
                hintText: 'username', 
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: passwordcontroller, 
              decoration: const InputDecoration(
                hintText: 'password',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                loginprovider.login(
                  emailcontroller.text.trim(),
                  passwordcontroller.text.trim(),
                );
              },
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(350, 50),
              ),
              child: loginprovider.loading
                  ? const CircularProgressIndicator(color: Colors.white)
                  : const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
