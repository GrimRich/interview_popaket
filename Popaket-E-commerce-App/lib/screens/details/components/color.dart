import 'package:flutter/material.dart';
import 'package:popaket_ecommerce/models/Product.dart';

import '../../../constants.dart';

class ColorProduct extends StatelessWidget {
  const ColorProduct({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              "Available Color  :  ",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
            SizedBox(width: kDefaultPaddin / 1.90),
            ColorDot(
              color: Color(0xFF87DCC0),
              isSelected: true,
            ),
            SizedBox(width: kDefaultPaddin / 1.90),
            ColorDot(color: Color(0xFF88BBE4)),
            SizedBox(width: kDefaultPaddin / 1.90),
            ColorDot(color: Color(0xFF957DAD)),
            SizedBox(width: kDefaultPaddin / 1.90),
            ColorDot(color: Color(0xFFFEC8D8)),
          ],
        ),
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    Key key,
    this.color,
    // by default isSelected is false
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: kDefaultPaddin / 4,
        right: kDefaultPaddin / 2,
      ),
      padding: EdgeInsets.all(2.5),
      height: 28,
      width: 28,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
