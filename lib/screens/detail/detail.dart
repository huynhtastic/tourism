import 'package:flutter/material.dart';

import 'widgets/text_section.dart';
import '../../models/location.dart';
import '../../widgets/image_banner.dart';
import '../../widgets/location_info.dart';

class DetailScreenArgs {
  final int id;

  DetailScreenArgs(this.id);
}

class Detail extends StatelessWidget {
  static const routeName = '/detail';
  static const double _hPad = 16.0;

  @override
  Widget build(BuildContext context) {
    final DetailScreenArgs args = ModalRoute.of(context).settings.arguments;

    final location = Location.fetchById(args.id);

    return Scaffold(
      appBar: AppBar(
        title: Text(location.name.toUpperCase()),
        centerTitle: true,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ImageBanner(location.src),
              Padding( 
                padding: EdgeInsets.all(_hPad),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LocationInfo(location),
                    ..._textSections(location),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _textSections(Location location) {
    return location.facts
        .map((fact) => TextSection(fact.title, fact.text))
        .toList();
  }
}
