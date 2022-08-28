import 'package:flutter/material.dart';

class CettaButton extends StatelessWidget {
  const CettaButton({Key? key, required this.text, this.onTap})
      : super(key: key);

  final VoidCallback? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
        backgroundColor: Colors.blue,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        onSurface: Colors.grey,
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
