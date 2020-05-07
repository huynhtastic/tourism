import 'package:flutter/material.dart';

import 'widgets/detail.dart';

class Location extends StatelessWidget {
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location Screen'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[
            GestureDetector(
              child: Text('Hello'),
              onTap: () => _onLocationTap(context, 1),
            ),
            Text('Hello'),
            Text('Hello'),
            Text('Hello'),
            Text('Hello'),
          ],
        ),
      ),
    );
  }

  _onLocationTap(BuildContext context, int locationId) =>
      Navigator.pushNamed(context, Detail.routeName,
          arguments: DetailScreenArgs(locationId));
}
