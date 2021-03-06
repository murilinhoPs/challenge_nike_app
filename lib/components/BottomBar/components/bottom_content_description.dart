import 'package:flutter/material.dart';

class NikeBottomDescription extends StatelessWidget {
  final height;
  final width;

  const NikeBottomDescription(this.height, this.width);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: <Widget>[
                SizedBox(height: height * 0.03),
                Text(
                  "MEN'S RUNNING JACKET",
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: height * 0.015),
                Text(
                  "NIKE WINDRUNNER \nWILD RUN",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    height: 1.5,
                  ),
                ),
                Text(
                  "\$120",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: height * 0.01),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 80),
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            // width: 300,
            // height: 70,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                  size: 32,
                ),
                Text(
                  "ADD TO CART",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                Text(
                  "\$120",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[200],
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
