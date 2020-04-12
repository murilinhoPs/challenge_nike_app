import 'package:flutter/material.dart';
import 'package:nike_app/components/size_options.dart';

class SizeOptionsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        SizeOptions(
          selected: true,
          size: 'XS',
        ),
        SizeOptions(),
        SizeOptions(
          size: 'M',
        ),
        SizeOptions(
          size: 'L',
        ),
        SizeOptions(
          size: 'XL',
        ),
        SizeOptions(
          size: '2XL',
        ),
      ],
    );
  }
}
