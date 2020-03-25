import 'package:flutter/material.dart';

class Other extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: _body(context),
    );
  }

  _appBar(BuildContext context) {
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
          ),
        ],
      ),
    );
  }

  _body(BuildContext context) {
    return SafeArea(
      child: Expanded(
        child: Container(
          width: double.infinity,
          color: Theme.of(context).backgroundColor,
        ),
      ),
    );
  }
}
