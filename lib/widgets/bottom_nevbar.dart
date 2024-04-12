import 'package:flutter/material.dart';
import 'package:netflix_clone/screens/Home_screen.dart';
import 'package:netflix_clone/screens/search.dart';

import '../screens/account.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomNavigationBar: Container(
          color: Colors.black,
          height: 70,
          child: TabBar(
            tabs: [
              Tab(
                text: "Home",
                icon: Icon(Icons.home),
              ),
              Tab(
                text: "Search",
                icon: Icon(Icons.search),
              ),
              Tab(
                text: "Account",
                icon: Icon(Icons.person_outline),
              ),
            ],
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.transparent,
          ),
          
        ),
        body: TabBarView(
          children: [
            HomeScreen(),
            search(),
            Account(),
          ],
        )
      ),
    );
  }
}
