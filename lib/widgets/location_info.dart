import 'package:flutter/material.dart';

import '../models/location.dart';
import '../style.dart';

class LocationInfo extends StatelessWidget {
  final Location _location;
  final bool darkTheme;

  LocationInfo(this._location, { this.darkTheme = false });

  @override
  Widget build(BuildContext context) {
    final textColor = darkTheme ? TextColorLight : TextColorDark;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          _location.name.toUpperCase(),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: Theme.of(context).textTheme.headline6.copyWith(color: textColor),
        ),
        Text(
          _location.itnerary.toUpperCase(),
          style: Theme.of(context).textTheme.bodyText2.copyWith(color: TextColorAccent)
        ),
        Text(
          _location.package.toUpperCase(),
          style: Theme.of(context).textTheme.bodyText2.copyWith(color: TextColorFaint)
        ),
      ],
    );
  }
}