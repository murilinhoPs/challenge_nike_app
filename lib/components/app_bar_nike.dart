import 'package:flutter/material.dart';

class NikeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 10, right: 10),
      padding: EdgeInsets.only(left: 10, right: 10),
      height: MediaQuery.of(context).size.height * 0.075,
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
          shape: BoxShape.rectangle),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          InkWell(
            highlightColor: Colors.blueGrey,
            child: Icon(
              Icons.short_text,
              color: Colors.black,
              size: 70,
            ),
            //onTap: () {},
          ),
          Container(
            height: 30,
            child: Image.asset('images/nike-logo.png'),
          ),
          CircleAvatar(
            backgroundColor: Colors.blueGrey,
          )
        ],
      ),
    );
  }
}
