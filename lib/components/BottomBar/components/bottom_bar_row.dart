import 'package:flutter/material.dart';
import 'package:nike_app/components/size_options.dart';

class SizeOptionsRow extends StatefulWidget {
  @override
  _SizeOptionsRowState createState() => _SizeOptionsRowState();
}

class _SizeOptionsRowState extends State<SizeOptionsRow> {
  int selectedIndex = 0;

  changeIndex(int value) => setState(() => selectedIndex = value);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        SizeOptions(
          index: 0,
          currentIndex: selectedIndex,
          size: 'XS',
          onSelect: changeIndex,
        ),
        SizeOptions(
          index: 1,
          currentIndex: selectedIndex,
          size: 'S',
          onSelect: changeIndex,
        ),
        SizeOptions(
          index: 2,
          currentIndex: selectedIndex,
          size: 'M',
          onSelect: changeIndex,
        ),
        SizeOptions(
          index: 3,
          currentIndex: selectedIndex,
          size: 'L',
          onSelect: changeIndex,
        ),
        SizeOptions(
          index: 4,
          currentIndex: selectedIndex,
          size: 'XL',
          onSelect: changeIndex,
        ),
        SizeOptions(
          index: 5,
          currentIndex: selectedIndex,
          size: '2XL',
          onSelect: changeIndex,
        ),
      ],
    );
  }
}
