import 'package:flutter/material.dart';
import 'package:lecun_app/theme/pallete.dart';

class HomeButton extends StatelessWidget {
  const HomeButton({
    super.key,
    required this.buttonColor,
    required this.icon,
    required this.onPressed,
  });

  final Color buttonColor;
  final Icon icon;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          side: BorderSide(color: Pallete.greyColor, width: 1),
          shape: const CircleBorder(),
          elevation: 0,
          padding: const EdgeInsets.all(16),
          backgroundColor: buttonColor, // Light teal color
        ),
        child: icon,
      ),
    );
  }
}
