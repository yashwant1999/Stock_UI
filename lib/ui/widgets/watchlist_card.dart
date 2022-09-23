import 'package:flutter/material.dart';
import 'package:task_first/constants/global_variables.dart';
import 'package:task_first/constants/style.dart';

import 'company_info_widget.dart';

/// Widget show the WatchList in horizontal axis.
class WatchlistCard extends StatelessWidget {
  const WatchlistCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.6,
        height: MediaQuery.of(context).size.height * 0.23,
        decoration: kContainerDecoration,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: const [
                CompanyInfo(
                  iconData: Icons.adobe,
                  companyName: 'Adb',
                  companyDescription: 'Adobe Inc.',
                ),
                Spacer(),
                Icon(
                  Icons.arrow_upward,
                  size: 16,
                  color: GlobalVariables.kSecondaryColor,
                ),
                Text(
                  '2.11%',
                  style: TextStyle(color: GlobalVariables.kSecondaryColor),
                ),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      '33.49',
                      style: TextStyle(
                          color: GlobalVariables.kPrimparyColor,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '\$643.58',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
