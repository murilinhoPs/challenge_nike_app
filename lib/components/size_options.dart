import 'package:flutter/material.dart';

class SizeOptions extends StatelessWidget {
  final String size;
  final bool selected;

  const SizeOptions({this.size, this.selected});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(15),
          bottom: Radius.circular(15),
        ),
        color: (selected ?? false)
            ? Colors.white.withOpacity(0.8)
            : Colors.transparent,
      ),
      alignment: Alignment.center,
      height: 50.0,
      width: 50.0,
      child: Text(
        size ?? 'S',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
