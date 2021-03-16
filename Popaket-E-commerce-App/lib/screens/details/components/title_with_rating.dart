import 'package:flutter/material.dart';
import 'package:popaket_ecommerce/models/Product.dart';

import '../../../constants.dart';

class TitleWithRating extends StatelessWidget {
  const TitleWithRating({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              product.title,
              style: TextStyle(
                  color: kTextLightColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 20,
                ),
                Text(
                  " (${product.star})",
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
          )
        ]);
  }
}
