import 'package:flutter/material.dart';
import 'package:popaket_ecommerce/constants.dart';
import 'package:popaket_ecommerce/models/Product.dart';

import 'add_to_cart.dart';
import 'size.dart';
import 'color.dart';
import 'description.dart';
import 'image.dart';
import 'title_with_rating.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // It provide us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Column(
              children: [
                Container(
                    color: Colors.white, child: ImageProduct(product: product)),
                Expanded(
                  flex: 5,
                  child: Container(
                    color: Colors.white,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 247, 247, 247),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24),
                        ),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(kDefaultPaddin * 1.25),
                        child: Column(
                          children: <Widget>[
                            TitleWithRating(product: product),
                            SizedBox(height: kDefaultPaddin / 1.25),
                            Description(product: product),
                            SizedBox(height: kDefaultPaddin / 1.25),
                            SizeProduct(product: product),
                            SizedBox(height: kDefaultPaddin / 1.25),
                            ColorProduct(product: product),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(kDefaultPaddin * 1.25),
                      child: Column(
                        children: <Widget>[
                          AddToCart(product: product),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
