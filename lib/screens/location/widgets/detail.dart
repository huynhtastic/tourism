import 'package:flutter/material.dart';

class DetailScreenArgs {
  final int id;

  DetailScreenArgs(this.id);
}

class Detail extends StatelessWidget {
  static const routeName = '/detail';

  @override
  Widget build(BuildContext context) {
    final DetailScreenArgs args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
      ),
      body: Text(args.id.toString()),
    );
  }
}
