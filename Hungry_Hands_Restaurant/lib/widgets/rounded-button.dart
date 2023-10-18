import 'package:flutter/material.dart';

import '../palatte.dart';

class RoundedButtonText extends StatelessWidget {
  const RoundedButtonText({
    super.key,
    required this.buttonText,
  });
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 210, 71, 61),
          borderRadius: BorderRadius.circular(16)),
      child: TextButton(
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            buttonText,
            style: kBodyTextalt,
          ),
        ),
      ),
    );
  }
}
