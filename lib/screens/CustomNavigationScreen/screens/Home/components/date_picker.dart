import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now = new DateTime.now();
    List<Widget> week = [];

    for (int i = -2; i < 5; i++) {
      final date = now.add(new Duration(days: i));
      week.add(_dayElement(date, context));
    }

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: week,
      ),
    );
  }

  Widget _dayElement(DateTime date, BuildContext context) {
    final now = new DateTime.now();
    final isToday = now.day == date.day;

    return Container(
      constraints: BoxConstraints(minHeight: 80),
      padding: EdgeInsets.symmetric(horizontal: isToday ? 14 : 0, vertical: 10),
      decoration: isToday
          ? BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Theme.of(context).primaryColor,
            )
          : null,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '${date.day}',
            style: TextStyle(
              color: isToday ? null : Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 19,
            ),
          ),
          Text(
            '${DateFormat('EEE').format(date)}',
            style: TextStyle(
              color: isToday ? null : Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}
