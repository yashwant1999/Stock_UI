import 'package:flutter/material.dart';
import 'package:task_first/constants/global_variables.dart';

class CustomTitleWIthButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const CustomTitleWIthButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: GlobalVariables.kPrimparyColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextButton(
          onPressed: onPressed,
          child: const Text('See All',
              style: TextStyle(color: GlobalVariables.kSecondaryColor)),
        )
      ],
    );
  }
}
