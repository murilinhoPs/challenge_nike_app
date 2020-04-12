import 'package:flutter/material.dart';
import 'package:nike_app/components/BottomBar/bottom_bar_nike.dart';
import 'package:nike_app/components/app_bar_nike.dart';
import 'package:nike_app/components/product_image.dart';
import 'package:nike_app/custom/custom_cons_icons.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool show = false;

  final _key = GlobalKey<ScaffoldState>();

  void _showDescription() => setState(() => show = !show);

  void _showDrawer() => _key.currentState.openDrawer();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      key: _key,
      backgroundColor: Color(0xFFEBF5F9),
      drawer: _myDrawer(context),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: NikeAppBar(_showDrawer),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 20,
            right: 0,
            left: 0,
            child: AnimatedOpacity(
              duration: Duration(milliseconds: 500),
              opacity: show ? 1.0 : 0.0,
              child: NikeProductImage(
                height: height,
                width: width,
              ),
            ),
          ),
          NikeBottomBar(show),
        ],
      ),
    );
  }

  // Drawer
  Widget _myDrawer(context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            child: Container(
              alignment: Alignment.center,
              width: 300,
              child: Text(
                'Selecione o \nproduto',
                style: TextStyle(fontSize: 28),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.grey[200],
            ),
          ),
          _drawerContent(context: context, title: 'Nike Windrunner'),
          _drawerContent(context: context, title: 'Nike Cloat'),
          _drawerContent(context: context, title: 'Nike Jacket'),
        ],
      ),
    );
  }

  Widget _drawerContent({context, title}) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 35, right: 35),
      child: InkWell(
          highlightColor: Colors.blueGrey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                CustomCons.t_shirt,
                size: 32,
              ),
              SizedBox(width: 15),
              Text(
                title,
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
          onTap: () {
            Navigator.of(context).pop();
            _showDescription();
          }),
    );
  }
}
