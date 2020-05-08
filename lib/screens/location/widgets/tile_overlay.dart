import 'package:flutter/material.dart';

import '../../../models/location.dart';
import '../../../widgets/location_info.dart';

class TileOverlay extends StatelessWidget {
  final Location location;


  TileOverlay(this.location);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(8),
          height: 100,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
          ),
          child: LocationInfo(
            location,
            darkTheme: true,
          ),
        ),
      ],
    );
  }
}
