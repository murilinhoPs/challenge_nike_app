import 'package:flutter/material.dart';

class NikeProductImage extends StatefulWidget {
  final double height;
  final double width;

  NikeProductImage({
    @required this.height,
    @required this.width,
  });

  @override
  _NikeProductImageState createState() => _NikeProductImageState();
}

class _NikeProductImageState extends State<NikeProductImage> {
  bool frontSelected = true;

  toggleSelected() => setState(() => frontSelected = !frontSelected);

  @override
  void initState() {
    setState(() {
      frontSelected = true;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.symmetric(vertical: widget.height * 0.),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          GestureDetector(
            onTap: () => toggleSelected(),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              height:
                  frontSelected ? widget.height * 0.55 : widget.height * 0.4,
              width: frontSelected ? widget.width * 0.45 : widget.width * 0.3,
              child: AnimatedOpacity(
                duration: Duration(microseconds: 500),
                opacity: frontSelected ? 1.0 : 0.4,
                child: Image.asset('images/front-jacket.png'),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => toggleSelected(),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              height:
                  frontSelected ? widget.height * 0.4 : widget.height * 0.55,
              width: frontSelected ? widget.width * 0.3 : widget.width * 0.45,
              child: AnimatedOpacity(
                duration: Duration(microseconds: 500),
                opacity: frontSelected ? 0.45 : 1.0,
                child: Image.asset('images/back-jacket.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
