import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nike_app/components/BottomBar/components/bottom_bar_row.dart';
import 'package:nike_app/components/BottomBar/components/bottom_content_description.dart';

class NikeBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Positioned(
      bottom: 0,
      // alignment: Alignment.bottomCenter,
      child: Container(
        child: Stack(
          children: <Widget>[
            Container(
              height: height * 0.34,
              width: width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.white,
                    Colors.white.withOpacity(0.05),
                  ],
                  stops: [0.75, 1.0],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
              ),
            ),
            _blur(context, height, width),
            Positioned(
              top: 15,
              right: 0,
              left: 0,
              child: Column(
                children: <Widget>[
                  SizeOptionsRow(),
                  NikeBottomDescription(height, width),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _blur(context, height, width) {
    return Positioned(
      bottom: 0,
      child: Container(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade100.withOpacity(0.2),
              ),
            ),
          ),
        ),
      ),
      height: height * 0.34,
      width: width,
    );
  }
}
