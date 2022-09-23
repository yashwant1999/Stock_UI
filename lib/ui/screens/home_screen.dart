import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:task_first/constants/global_variables.dart';
import 'package:task_first/ui/widgets/custom_title_with_button.dart';
import 'package:task_first/ui/widgets/overview_card.dart';
import 'package:task_first/ui/widgets/stock_activity_card.dart';
import 'package:task_first/ui/widgets/watchlist_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /// Track the index of currently tapped Item.
  int _selectedIndex = 0;

  /// Function which rebuild widget and change index accordingly
  ///  when user tap of on different [NavigationBarItem].
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEFEFE),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Iconsax.home5,
          color: GlobalVariables.kPrimparyColor,
        ),
        title: const Text(
          'Alex Julia',
          style: TextStyle(
              color: GlobalVariables.kPrimparyColor,
              fontWeight: FontWeight.bold),
        ),
        actions: const [
          Icon(
            Iconsax.search_normal_1,
            color: GlobalVariables.kPrimparyColor,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Iconsax.notification,
            color: GlobalVariables.kPrimparyColor,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const OverviewCard(),
              CustomTitleWIthButton(title: 'Watchlist', onPressed: () {}),
              const WatchList(),
              CustomTitleWIthButton(title: 'Stocks Activity', onPressed: () {}),
              const StocksActivity(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            const BottomNavigationBarItem(
              icon: Icon(Iconsax.home_15),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Iconsax.graph),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                  constraints: BoxConstraints.tight(const Size(40, 40)),
                  decoration: const BoxDecoration(
                      color: GlobalVariables.kSecondaryColor,
                      shape: BoxShape.circle),
                  child: const Icon(
                    Iconsax.arrow_2,
                    color: Colors.white,
                    size: 15,
                  )),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Iconsax.activity),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Iconsax.profile_2user),
              label: '',
            ),
          ],
          backgroundColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: GlobalVariables.kPrimparyColor,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}

class StocksActivity extends StatelessWidget {
  const StocksActivity({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          StockActivityCard(),
          StockActivityCard(),
          StockActivityCard(),
          StockActivityCard(),
          StockActivityCard()
        ],
      ),
    );
  }
}

class WatchList extends StatelessWidget {
  const WatchList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Row(
          children: const [
            WatchlistCard(),
            WatchlistCard(),
            WatchlistCard(),
          ],
        ),
      ),
    );
  }
}
