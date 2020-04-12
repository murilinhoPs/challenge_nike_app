import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nike_app/components/BottomBar/components/bottom_bar_row.dart';
import 'package:nike_app/components/BottomBar/components/bottom_content_description.dart';

class NikeBottomBar extends StatelessWidget {
  final bool show;

  NikeBottomBar(this.show);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Positioned(
      bottom: 0,
      child: Container(
        child: Stack(
          children: <Widget>[
            AnimatedContainer(
              duration: Duration(milliseconds: 500),
              height: show ? height * 0.45 : height * 0.1, //0.34,
              width: width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.white,
                    Colors.white.withOpacity(0.5),
                  ],
                  stops: [0.7, 1.0],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(50),
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
                  AnimatedCrossFade(
                    firstChild: SizeOptionsRow(),
                    secondChild: Text(
                      'Clique no menu lateral para exibir o conteúdo',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    crossFadeState: show
                        ? CrossFadeState.showFirst
                        : CrossFadeState.showSecond,
                    duration: Duration(milliseconds: 200),
                  ),
                  AnimatedCrossFade(
                    firstChild: NikeBottomDescription(height, width),
                    secondChild: Container(),
                    crossFadeState: show
                        ? CrossFadeState.showFirst
                        : CrossFadeState.showSecond,
                    duration: Duration(milliseconds: 500),
                  ),
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
          borderRadius: BorderRadius.circular(50),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 7, sigmaY: 10),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade100.withOpacity(0.3),
              ),
            ),
          ),
        ),
      ),
      height: height * 0.45,
      width: width,
    );
  }
}
