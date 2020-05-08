import 'package:flutter/material.dart';

import 'widgets/detail.dart';
import '../../models/location.dart';

class Locations extends StatelessWidget {
  static const routeName = '/';

  final locations = Location.fetchAll();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Locations'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) =>
              _buildItem(context, locations[index]),
        ),
      ),
    );
  }

  Widget _buildItem(BuildContext context, Location location) {
    return GestureDetector(
      child: Text(location.name),
      onTap: () => _onLocationTap(context, 1),
    );
  }

  _onLocationTap(BuildContext context, int locationId) =>
      Navigator.pushNamed(context, Detail.routeName,
          arguments: DetailScreenArgs(locationId));
}
