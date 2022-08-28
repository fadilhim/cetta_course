import 'package:cetta_course/presentation/themes/themes.dart';
import 'package:flutter/material.dart';

class CettaTextField extends StatelessWidget {
  const CettaTextField({
    Key? key,
    required this.icon,
    this.hintText,
  }) : super(key: key);

  final IconData icon;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Icon(
            icon,
            color: CettaColor.blue500,
          ),
        ),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: hintText,
            ),
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
