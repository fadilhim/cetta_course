import 'package:cetta_course/main.dart';
import 'package:cetta_course/presentation/features/register/sign_up_page.dart';
import 'package:cetta_course/presentation/widgets/widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 36),
        children: [
          Text(
            "SIGN IN",
            style: Theme.of(context).textTheme.headline4,
          ),
          const Text(
            'Silahkan login terlebih dahulu',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 15),
          const CettaTextField(
            icon: Icons.alternate_email,
            hintText: 'Email Address',
          ),
          const CettaTextField(
            icon: Icons.lock,
            hintText: 'Password',
          ),
          const SizedBox(height: 16),
          CettaButton(
            text: 'Login',
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const MainPage(),
                ),
              );
            },
          ),
          const SizedBox(height: 32),
          Align(
            alignment: Alignment.center,
            child: RichText(
              text: TextSpan(
                text: 'Belum punya akun?',
                style: const TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: ' Daftar',
                    style: const TextStyle(color: Colors.blue),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpPage(),
                          ),
                        );
                      },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
