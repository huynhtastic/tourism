import 'package:flutter/material.dart';

import 'routes.dart';
import 'style.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tourism',
      routes: routes,
      theme: _theme(),
    );
  }

  ThemeData _theme() {
    return ThemeData(
      appBarTheme: AppBarTheme(
        color: AppBarColor,
        textTheme: TextTheme(
          headline6: AppBarTextStyle,
        ),
      ),
      textTheme: TextTheme(
        headline6: TitleTextStyle,
        bodyText2: Body2TextStyle,
      ),
    );
  }
}
