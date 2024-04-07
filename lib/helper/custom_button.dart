import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.label,
    required this.deviceWidth,
    required this.deviceHeight,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.onPressed,
  }) : super(key: key);

  final String label;
  final double deviceWidth;

  final double deviceHeight;
  final Color backgroundColor;
  final Color foregroundColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(
          foregroundColor,
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          backgroundColor,
        ),
        minimumSize: MaterialStateProperty.all<Size>(
          Size(
            deviceWidth,
            deviceHeight,
          ),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              10.0,
            ),
          ),
        ),
        elevation: MaterialStateProperty.all(.40),
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
