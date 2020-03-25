import 'package:flutter/material.dart';

class PopularEvents extends StatelessWidget {
  final List<Map<String, Object>> events = [
    {'icon': Icons.music_note, 'name': 'Concert'},
    {'icon': Icons.directions_run, 'name': 'Sports'},
    {'icon': Icons.school, 'name': 'Education'},
    {'icon': Icons.cake, 'name': 'Food'},
    {'icon': Icons.airline_seat_recline_extra, 'name': 'Enterteinment'}
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Popular Events',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Muli',
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 25),
            Expanded(
              child: _eventsList(),
            )
          ],
        ),
      ),
    );
  }

  _eventsList() {
    return ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
              height: 25,
            ),
        itemCount: events.length,
        itemBuilder: (context, index) {
          var item = events[index];
          return _event(item, context);
        });
  }

  Widget _event(Map<String, Object> item, BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: Row(
          children: <Widget>[
            Flexible(
              fit: FlexFit.tight,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Sports Meet in Galaxy Field',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.calendar_today,
                          color: Colors.white,
                          size: 15,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Jan 12, 2019',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          color: Colors.white,
                          size: 15,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Greenfields, Sector 42, Faridabad',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: double.maxFinite,
              width: 100,
              child: Image(
                image: AssetImage('assets/event.jpg'),
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}
