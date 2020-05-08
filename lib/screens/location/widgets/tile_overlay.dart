import 'package:flutter/material.dart';

import '../../../style.dart';
import '../../../models/location.dart';

class TileOverlay extends StatelessWidget {
  final Location _location;
  final bool darkTheme;


  TileOverlay(this._location, {this.darkTheme = false});

  @override
  Widget build(BuildContext context) {
    final textColor = this.darkTheme ? TextColorLight : TextColorDark;

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(_location.name, style: Theme.of(context).textTheme.headline6.copyWith(color: textColor),)
            ],
          ),
        ),
      ],
    );
  }
}
