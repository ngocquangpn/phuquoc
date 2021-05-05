import 'package:flutter/material.dart';
import 'package:phuquocisland/src/screens/Intro.dart';
import 'package:phuquocisland/src/screens/about.dart';
import 'package:phuquocisland/src/screens/home.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: <Widget>[
          Home(),
          Intro(),
          About(),
        ],
        // If you want to disable swiping in tab the use below code
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
      ),
      extendBody: true,
      bottomNavigationBar: Container(
        color: Colors.transparent,
        child: ClipRRect(
          // borderRadius: BorderRadius.all(
          //   Radius.circular(20.0),
          // ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              // borderRadius: BorderRadius.only(
              //     topLeft: Radius.circular(20),
              //     topRight: Radius.circular(20),
              //     bottomLeft: Radius.circular(20),
              //     bottomRight: Radius.circular(20)
              // ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: TabBar(
              labelColor: Color(0xFFC41A3B),
              unselectedLabelColor: Colors.black,
              labelStyle: TextStyle(fontSize: 8.0),
              indicatorColor: Colors.black54,
              tabs: <Widget>[
                Tab(
                  icon: Icon(
                    Icons.home,
                    size: 30.0,
                  ),
                  text: 'Home',
                ),
                Tab(
                  icon: Icon(
                    Icons.category,
                    size: 30.0,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.shopping_cart,
                    size: 30.0,
                  ),
                  text: 'Cart',
                ),
              ],
              controller: _tabController,
            ),
          ),
        ),
      ),
    );
  }
}
