import 'package:flutter/material.dart';
import 'package:nike_app/components/BottomBar/bottom_bar_nike.dart';
import 'package:nike_app/components/app_bar_nike.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFFEBF5F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: NikeAppBar(),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 20,
            right: 0,
            left: 0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: height * 0.12),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    height: height * 0.55,
                    width: width * 0.5,
                    child: Image.asset('images/front-jacket.png'),
                  ),
                  Container(
                    //margin: EdgeInsets.only(top: 100),
                    height: height * 0.4,
                    width: width * 0.3,
                    child: Image.asset('images/back-jacket.png'),
                  ),
                ],
              ),
            ),
          ),
          NikeBottomBar(),
        ],
      ),
    );
  }
}
