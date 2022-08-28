import 'package:cetta_course/presentation/features/login/sign_in_page.dart';
import 'package:cetta_course/presentation/widgets/widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 36),
        children: [
          Text(
            "SIGN UP",
            style: Theme.of(context).textTheme.headline4,
          ),
          const Text(
            'Daftarkan akun anda',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 15),
          const CettaTextField(
            icon: Icons.person_sharp,
            hintText: 'Name',
          ),
          const CettaTextField(
            icon: Icons.alternate_email,
            hintText: 'Email Address',
          ),
          const CettaTextField(
            icon: Icons.lock,
            hintText: 'Password',
          ),
          const CettaTextField(
            icon: Icons.map,
            hintText: 'Birth Place',
          ),
          const CettaTextField(
            icon: Icons.date_range,
            hintText: 'Birth Date',
          ),
          const SizedBox(height: 16),
          CettaButton(
            text: 'Daftar',
            onTap: () {
              // Navigator.pushReplacement(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => const DashboardPage(),
              //   ),
              // );
            },
          ),
          const SizedBox(height: 32),
          Align(
            alignment: Alignment.center,
            child: RichText(
              text: TextSpan(
                text: 'Sudah punya akun?',
                style: const TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: ' Masuk',
                    style: const TextStyle(color: Colors.blue),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignInPage(),
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
