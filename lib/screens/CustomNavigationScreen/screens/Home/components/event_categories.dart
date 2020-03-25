import 'package:flutter/material.dart';

class EventCategories extends StatelessWidget {
  final List<Map<String, Object>> events = [
    {'icon': Icons.music_note, 'name': 'Concert'},
    {'icon': Icons.directions_run, 'name': 'Sports'},
    {'icon': Icons.school, 'name': 'Education'},
    {'icon': Icons.cake, 'name': 'Food'},
    {'icon': Icons.airline_seat_recline_extra, 'name': 'Enterteinment'}
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'All Events',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Muli',
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 25),
          Expanded(
            child: _categoriesList(),
          )
        ],
      ),
    );
  }

  _categoriesList() {
    return ListView.separated(
        separatorBuilder: (BuildContext context, int index) => SizedBox(
              width: 25,
            ),
        scrollDirection: Axis.horizontal,
        itemCount: events.length,
        itemBuilder: (context, index) {
          var item = events[index];
          return _eventCategory(item, context);
        });
  }

  Widget _eventCategory(Map<String, Object> item, BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      height: 100,
      width: 130,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(
            item['icon'],
            color: Colors.white,
            size: 35,
          ),
          Text(
            item['name'],
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}
