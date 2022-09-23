import 'package:flutter/material.dart';
import 'package:task_first/constants/global_variables.dart';
import 'package:task_first/ui/widgets/custom_icon_button.dart';

class CompanyInfo extends StatelessWidget {
  final IconData iconData;
  final String companyName;
  final String companyDescription;
  const CompanyInfo({
    super.key,
    required this.iconData,
    required this.companyName,
    required this.companyDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomIconButton(
          icon: Icon(iconData),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              companyName,
              style: const TextStyle(
                  color: GlobalVariables.kPrimparyColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              companyDescription,
              style: const TextStyle(color: Colors.grey, fontSize: 10),
            )
          ],
        )
      ],
    );
  }
}
