import 'package:flutter/material.dart';

import './widgets/tile_overlay.dart';
import '../detail/detail.dart';
import '../../models/location.dart';
import '../../widgets/image_banner.dart';

class Locations extends StatelessWidget {
  static const routeName = '/';

  final locations = Location.fetchAll();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Locations'),
      ),
      body: Container(
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
      child: locationTile(location),
      onTap: () => _onLocationTap(context, location.id),
    );
  }

  Widget locationTile(Location location) {
    return Container(
      height: 300,
      child: Stack(
        children: <Widget>[
          ImageBanner(location.src),
          TileOverlay(
            location,
            darkTheme: true,
            ),
        ],
      )
    );
  }

  _onLocationTap(BuildContext context, int locationId) =>
      Navigator.pushNamed(context, Detail.routeName,
          arguments: DetailScreenArgs(locationId));
}
