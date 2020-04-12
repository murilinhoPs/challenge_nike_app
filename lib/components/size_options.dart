import 'package:flutter/material.dart';

class SizeOptions extends StatelessWidget {
  final String size;
  final int index;
  final int currentIndex;
  final Function(int) onSelect;

  bool get selected => index == currentIndex;

  const SizeOptions({this.size, this.index, this.currentIndex, this.onSelect});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onSelect(index),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(15),
            bottom: Radius.circular(15),
          ),
          color: (selected ?? false)
              ? Colors.blueGrey[100].withOpacity(0.6)
              : Colors.transparent,
        ),
        alignment: Alignment.center,
        height: 42.0,
        width: 40.0,
        child: Text(
          size ?? 'S',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
