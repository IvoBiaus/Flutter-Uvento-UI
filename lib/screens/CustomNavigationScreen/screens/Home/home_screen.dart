import 'package:flutter/material.dart';

import 'components/date_picker.dart';
import 'components/event_categories.dart';
import 'components/greetings.dart';
import 'components/popular_events.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _homeAppBar(context),
      body: _homeBody(context),
    );
  }

  _homeAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Theme.of(context).backgroundColor,
      leading: Image(
        image: AssetImage('assets/logo_small.png'),
        fit: BoxFit.none,
      ),
      title: Row(
        children: <Widget>[
          Text(
            'UVE',
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'Muli',
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'NTO',
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'Muli',
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.notifications_none,
            color: Colors.white,
            size: 35,
          ),
          onPressed: null,
        ),
        IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
            size: 35,
          ),
          onPressed: null,
        ),
      ],
    );
  }

  _homeBody(BuildContext context) {
    return SafeArea(
      child: Expanded(
        child: Container(
          width: double.infinity,
          color: Theme.of(context).backgroundColor,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 25,
              left: 25,
              right: 25,
            ),
            child: Column(
              children: <Widget>[
                Greetings(),
                SizedBox(height: 25),
                DatePicker(),
                SizedBox(height: 25),
                EventCategories(),
                SizedBox(height: 25),
                PopularEvents()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
