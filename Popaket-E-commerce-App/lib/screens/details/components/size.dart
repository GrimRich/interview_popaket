import 'package:flutter/material.dart';
import 'package:popaket_ecommerce/models/Product.dart';

import '../../../constants.dart';

class SizeProduct extends StatelessWidget {
  const SizeProduct({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Row(
          children: [
            Text(
              "Size : ",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
            SizedBox(width: kDefaultPaddin / 1.75),
            SizeChart(size: 6, isSelected: true),
            SizedBox(width: kDefaultPaddin / 1.75),
            SizeChart(size: 7),
            SizedBox(width: kDefaultPaddin / 1.75),
            SizeChart(size: 8),
            SizedBox(width: kDefaultPaddin / 1.75),
            SizeChart(size: 9),
            SizedBox(width: kDefaultPaddin / 1.75),
          ],
        ),
      ],
    );
  }
}

class SizeChart extends StatelessWidget {
  final int size;
  final bool isSelected;
  const SizeChart({
    Key key,
    this.size,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPaddin / 1.75),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: isSelected
            ? Colors.lightBlueAccent.withOpacity(0.3)
            : Colors.transparent,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Text(
        "\US ${size}",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
