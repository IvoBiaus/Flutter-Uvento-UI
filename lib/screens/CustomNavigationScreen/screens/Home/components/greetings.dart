import 'package:flutter/material.dart';

class Greetings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        _greetingText(),
        _profilePic(context),
      ],
    );
  }

  _profilePic(BuildContext context) {
    return Stack(
      children: <Widget>[
        CircleAvatar(
          backgroundImage: AssetImage('assets/profile_pic.jpg'),
          radius: 35,
        ),
        Container(
          height: 73,
          width: 73,
          decoration: BoxDecoration(
            border: Border.all(
              width: 3,
              color: Theme.of(context).primaryColor,
            ),
            borderRadius: BorderRadius.all(Radius.circular(40)),
          ),
        )
      ],
    );
  }

  _greetingText() {
    return Flexible(
      flex: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Hello, Geralt ! ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: 'Muli',
              letterSpacing: 2,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Let\'s explore what’s happening nearby',
            softWrap: true,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Muli',
              letterSpacing: 2,
            ),
          ),
        ],
      ),
    );
  }
}
