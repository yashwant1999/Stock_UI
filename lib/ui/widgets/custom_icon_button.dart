import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final Icon icon;
  final Size size;
  final VoidCallback? onPressed;
  const CustomIconButton(
      {super.key,
      required this.icon,
      this.onPressed,
      this.size = const Size(40, 40)});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          constraints: BoxConstraints.tight(size),
          decoration: const BoxDecoration(
            color: Color(0xffF3F7FA),
            shape: BoxShape.circle,
          ),
          child: icon),
    );
  }
}
