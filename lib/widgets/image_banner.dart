import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String _src;
  static const double _height = 300.0;

  ImageBanner(this._src);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(
        height: _height,
      ),
      decoration: BoxDecoration(color: Colors.grey),
      child: Image.asset(
        _src,
        fit: BoxFit.cover,
      ),
    );
  }
}
