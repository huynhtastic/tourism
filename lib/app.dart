import 'package:flutter/material.dart';

import 'routes.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tourism',
      routes: routes,
    );
  }
}
