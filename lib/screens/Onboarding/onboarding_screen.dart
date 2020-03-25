import 'package:flutter/material.dart';
import '../../screens/CustomNavigationScreen/custom_navigation_screen.dart';

class Onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image(
            width: double.infinity,
            height: double.infinity,
            image: AssetImage('assets/PATTERN.png'),
            fit: BoxFit.cover,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 50,
                    child: Image(image: AssetImage('assets/logo.png')),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  _title(context),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'There’s a lot happening around you! Our mission is to provide what’s happening near you!',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Open Sans',
                        letterSpacing: 1,
                        wordSpacing: 3,
                        fontWeight: FontWeight.w500,
                        height: 1.7),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  _getStartedButton(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _getStartedButton(BuildContext context) {
    return Listener(
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(100)),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                highlightColor: Colors.transparent,
                splashColor: Theme.of(context).primaryColor,
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    children: <Widget>[
                      Text(
                        'Get Started',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Muli',
                            fontSize: 16),
                      ),
                      SizedBox(width: 25),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 25,
                      )
                    ],
                  ),
                ),
                onTap: () => _navigateToHome(context),
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }

  _navigateToHome(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CustomNavigation()),
    );
  }

  _title(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          'UVE',
          style: TextStyle(
              fontSize: 30,
              fontFamily: 'Muli',
              color: Colors.white,
              fontWeight: FontWeight.w500),
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
              fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
