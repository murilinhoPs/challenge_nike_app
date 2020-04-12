import 'package:flutter/material.dart';

class NikeAppBar extends StatelessWidget {
  final VoidCallback showDrawer;

  NikeAppBar(this.showDrawer);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 0),
      padding: EdgeInsets.only(right: 20, left: 20, bottom: 5),
      height: MediaQuery.of(context).size.height * 0.12,
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(25),
        ),
        shape: BoxShape.rectangle,
      ),
      child: _body(),
    );
  }

  Widget _body() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          child: Icon(
            Icons.short_text,
            color: Colors.black,
            size: 55,
          ),
          onTap: showDrawer,
        ),
        Container(
          height: 30,
          child: Image.asset('images/nike-logo.png'),
        ),
        CircleAvatar(
          backgroundImage: NetworkImage(
              'https://avatars0.githubusercontent.com/u/36513735?s=460&u=7e587d58333e859264eab0708b6a66d95166797c&v=4'),
          backgroundColor: Colors.blueGrey,
        )
      ],
    );
  }
}
