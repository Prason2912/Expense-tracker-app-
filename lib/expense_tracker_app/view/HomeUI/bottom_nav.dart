
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider_app/expense_tracker_app/view/HomeUI/account_page.dart';
import 'package:provider_app/expense_tracker_app/view/HomeUI/home_page.dart';
import 'package:provider_app/expense_tracker_app/view/HomeUI/walletpage.dart';
import 'package:provider_app/expense_tracker_app/widget/transaction_list.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  final List<Widget> _states = [
    HomePage(),
    TransactionList(),
    Walletpage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade200,
      body:
      _states[currentIndex],
      bottomNavigationBar:
      Container(
        color: Colors.teal.shade600,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: GNav(
              gap: 5,
              backgroundColor: Colors.teal.shade600,
              tabBackgroundColor: Colors.teal.shade200,
              activeColor: Colors.white,
              color: Colors.teal.shade200,
              padding: EdgeInsets.all(16),
              onTabChange: (index){
                setState(() {
                  currentIndex=index;
                });

              },
              tabs: [
                GButton(icon: Icons.home,
                  text: "Home",),
                GButton(icon: Icons.pie_chart,
                    text: "Transaction"),
                GButton(icon: Icons.wallet,text: "Wallet",),
                GButton(icon: Icons.person,text: "Account",),
              ]),
        ),
      )
     /* Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: GNav(
            gap: 5,
              backgroundColor: Colors.white,
              tabBackgroundColor: Colors.teal.shade200,
              activeColor: Colors.white,
              color: Colors.teal.shade200,
              padding: EdgeInsets.all(16),
              tabs: [
                 GButton(icon: Icons.home,
                 text: "Home",),
                GButton(icon: Icons.pie_chart,
                text: "Transaction"),
                GButton(icon: Icons.search,text: "Search",),
                GButton(icon: Icons.person,text: "Account",),
              ]),
        ),
      )*/
    );
  }
}
