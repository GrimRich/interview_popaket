import 'package:flutter/material.dart';
import 'package:popaket_ecommerce/models/Product.dart';

import '../../../constants.dart';

class Description extends StatelessWidget {
  const Description({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          product.description,
          style: TextStyle(height: 1.5),
        ),
      ),
    );
  }
}
