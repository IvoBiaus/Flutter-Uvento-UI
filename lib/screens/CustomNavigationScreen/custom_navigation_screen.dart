import 'package:flutter/material.dart';
import 'screens/Home/home_screen.dart';
import 'screens/Other/other_screen.dart';

class CustomNavigation extends StatefulWidget {
  @override
  CustomNavigationState createState() => CustomNavigationState();
}

class CustomNavigationState extends State<CustomNavigation>
    with TickerProviderStateMixin {
  int tabSelected = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: _tabBarView(),
        bottomNavigationBar: _navigationBar(context),
      ),
    );
  }

  _tabBarView() {
    return TabBarView(
      children: [
        Home(),
        Other(),
        Other(),
      ],
    );
  }

  _navigationBar(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      color: Theme.of(context).accentColor,
      height: 100,
      child: TabBar(
        onTap: (value) {
          setState(() {
            tabSelected = value;
          });
        },
        tabs: [
          Tab(
            child: _customBarButton(
              label: 'Home',
              icon: Icons.home,
              isSelected: this.tabSelected == 0,
            ),
          ),
          Tab(
            child: _customBarButton(
              label: 'Search',
              icon: Icons.search,
              isSelected: this.tabSelected == 1,
            ),
          ),
          Tab(
            child: _customBarButton(
              label: 'Favorites',
              icon: Icons.star_border,
              isSelected: this.tabSelected == 2,
            ),
          ),
        ],
        labelColor: Theme.of(context).primaryColor,
        unselectedLabelColor: Colors.grey[200],
        indicatorColor: Colors.transparent,
      ),
    );
  }

  _customBarButton({String label, IconData icon, bool isSelected}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(50)),
        color:
            Theme.of(context).backgroundColor.withOpacity(isSelected ? 1 : 0),
      ),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(icon),
          SizedBox(width: isSelected ? 15 : 0),
          AnimatedSize(
            vsync: this,
            curve: Curves.easeInOut,
            duration: Duration(milliseconds: 500),
            child: Text(isSelected ? label : ''),
          ),
        ],
      ),
    );
  }
}
