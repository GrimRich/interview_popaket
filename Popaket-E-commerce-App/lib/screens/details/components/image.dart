import 'package:flutter/material.dart';
import 'package:popaket_ecommerce/models/Product.dart';

import '../../../constants.dart';

class ImageProduct extends StatelessWidget {
  const ImageProduct({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPaddin / 1.75),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: EdgeInsets.all(7.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.lightBlueAccent.withOpacity(0.6),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Text("${product.discount}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 12.0))),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.width * 0.60,
            child: Hero(
              tag: "${product.id}",
              child: Image.asset(
                product.image,
                width: MediaQuery.of(context).size.width * 0.75,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
