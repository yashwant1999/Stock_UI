import 'package:flutter/material.dart';
import 'package:task_first/constants/global_variables.dart';
import 'package:task_first/ui/widgets/custom_icon_button.dart';

/// Top main widget of the screen which show the over of Stocks.
class OverviewCard extends StatelessWidget {
  const OverviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            left: 10,
            right: 5,
            child: Container(
              transform: Matrix4.rotationZ(0.02),
              height: MediaQuery.of(context).size.height * 0.25,
              decoration: const BoxDecoration(
                color: GlobalVariables.kSecondaryColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            padding: const EdgeInsets.all(25),
            decoration: const BoxDecoration(
              color: GlobalVariables.kPrimparyColor,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Portfolia value',
                  style: TextStyle(
                      color: Colors.white70, fontSize: 12, letterSpacing: 0.8),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      '\$15,136.32',
                      style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '2.11%',
                      style: TextStyle(
                          color: GlobalVariables.kSecondaryColor, fontSize: 11),
                    ),
                    Icon(
                      Icons.arrow_upward,
                      size: 16,
                      color: GlobalVariables.kSecondaryColor,
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 35,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            elevation: 0,
                            shape: const RoundedRectangleBorder(
                                side: BorderSide(
                                    style: BorderStyle.solid,
                                    color: Colors.blueGrey,
                                    width: 1.5),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            backgroundColor: GlobalVariables.kSecondaryColor),
                        onPressed: () {},
                        child: const Text(
                          'Deposit',
                          style: TextStyle(color: Colors.white70),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      height: 35,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          side: const BorderSide(
                              style: BorderStyle.solid,
                              color: Colors.blueGrey,
                              width: 1.5),
                          elevation: 0,
                          backgroundColor: const Color(0xff03314B),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Withdraw',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            // alignment: Alignment.bottomRight,
            top: 25,
            // left: 0,
            right: 25,
            bottom: -20,
            child: Container(
              width: 60,
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    spreadRadius: 1.5,
                  )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomIconButton(
                      size: const Size(30, 30),
                      icon: const Icon(Icons.apple),
                      onPressed: () {},
                    ),
                    CustomIconButton(
                      size: const Size(30, 30),
                      icon: const Icon(Icons.paypal),
                      onPressed: () {},
                    ),
                    CustomIconButton(
                      size: const Size(30, 30),
                      icon: const Icon(Icons.facebook),
                      onPressed: () {},
                    ),
                    const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey,
                    ),
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
