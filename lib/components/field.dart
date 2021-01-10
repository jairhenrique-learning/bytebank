import 'package:flutter/material.dart';

class Field extends StatelessWidget {
  final String hintText;
  final String labelText;
  final TextEditingController textController;
  final IconData inputIcon;

  const Field(
    this.labelText,
    this.hintText,
    this.textController, {
    this.inputIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextField(
        controller: textController,
        keyboardType: TextInputType.number,
        style: TextStyle(fontSize: 24.0),
        decoration: InputDecoration(
          icon: inputIcon != null ? Icon(inputIcon) : null,
          labelText: labelText,
          hintText: hintText,
        ),
      ),
    );
  }
}
