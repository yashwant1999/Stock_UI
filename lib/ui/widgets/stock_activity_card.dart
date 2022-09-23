import 'package:flutter/material.dart';
import 'package:task_first/constants/global_variables.dart';
import 'package:task_first/constants/style.dart';
import 'package:task_first/ui/widgets/company_info_widget.dart';

class StockActivityCard extends StatelessWidget {
  const StockActivityCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: kContainerDecoration,
        child: Row(
          children: [
            const CompanyInfo(
                iconData: Icons.apple,
                companyName: 'Apple',
                companyDescription: 'Apple Inc.'),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  '25.94',
                  style: TextStyle(
                      color: GlobalVariables.kSecondaryColor,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.arrow_upward,
                      size: 13,
                      color: GlobalVariables.kSecondaryColor,
                    ),
                    Text(
                      '2.11%',
                      style: TextStyle(
                          color: GlobalVariables.kSecondaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  '\$643.58',
                  style: TextStyle(
                      color: GlobalVariables.kPrimparyColor,
                      // fontSize: 2,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '10 shares',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
