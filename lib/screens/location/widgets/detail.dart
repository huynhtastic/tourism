import 'package:flutter/material.dart';

import 'image_banner.dart';
import 'text_section.dart';
import '../../../models/location.dart';

class DetailScreenArgs {
  final int id;

  DetailScreenArgs(this.id);
}

class Detail extends StatelessWidget {
  static const routeName = '/detail';

  @override
  Widget build(BuildContext context) {
    final DetailScreenArgs args = ModalRoute.of(context).settings.arguments;

    final location = Location.fetchById(args.id);

    return Scaffold(
      appBar: AppBar(
        title: Text(location.name),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ImageBanner(location.src),
              ..._textSections(location),
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
