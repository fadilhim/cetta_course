import 'package:cetta_course/week_1/sign_up_page.dart';
import 'package:flutter/material.dart';

// TODO: add lifecycle

class SignInPage extends StatelessWidget {
  const SignInPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "SIGN IN",
                  style: Theme.of(context).textTheme.headline4,
                ),
                TextButton(
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(kPrimaryColor)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpPage()),
                    );
                  },
                  child: const Text('SIGN UP'),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Icon(
                      Icons.alternate_email,
                      color: kPrimaryColor,
                    ),
                  ),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Email Address',
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Icon(
                    Icons.lock,
                    color: kPrimaryColor,
                  ),
                ),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Password', fillColor: Colors.white),
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 85),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white.withOpacity(.5),
                      ),
                    ),
                    child: Icon(
                      Icons.facebook_sharp,
                      color: Colors.white.withOpacity(.5),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white.withOpacity(.5),
                      ),
                    ),
                    child: Icon(
                      Icons.discord_sharp,
                      color: Colors.white.withOpacity(.5),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kPrimaryColor,
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_forward),
                      color: Colors.black,
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => Dashboard()),
                        // );
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
