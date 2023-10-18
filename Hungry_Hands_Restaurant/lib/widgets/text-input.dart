import 'package:flutter/material.dart';

import '../palatte.dart';

class TextInput extends StatefulWidget {
  const TextInput({
    super.key,
  });

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.grey[300]?.withOpacity(0.5),
            borderRadius: BorderRadius.circular(16)),
        child: TextField(
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(20),
              border: InputBorder.none,
              hintText: "Restaurant ID",
              hintStyle: kBodyText),
          style: kBodyText,
          keyboardType: TextInputType.numberWithOptions(),
          textInputAction: TextInputAction.next,
        ),
      ),
    );
  }
}
