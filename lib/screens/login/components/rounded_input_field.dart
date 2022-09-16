import 'package:flutter/material.dart';

// Components
import 'text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  const RoundedInputField({
    Key? key,
    required this.size,
    required this.hintText,
    required this.icon,
    required this.onChanged,
  }) : super(key: key);

  final Size size;
  final String hintText;
  final Icon icon;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: TextFieldContainer(
        size: size,
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            icon: icon,
          ),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
