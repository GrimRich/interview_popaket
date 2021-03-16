import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:popaket_ecommerce/models/Product.dart';

import '../../../constants.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          "\$${product.price}",
          style: TextStyle(
              color: kTextLightColor,
              fontWeight: FontWeight.bold,
              fontSize: 29),
        ),
        // icon: SvgPicture.asset(
        //   "assets/icons/add_to_cart.svg",
        Container(
          height: 40.0,
          padding: EdgeInsets.all(5.0),
          child: GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.deepPurple,
                  style: BorderStyle.solid,
                  width: 1.0,
                ),
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin: EdgeInsets.all(5.0),
                        child: SvgPicture.asset(
                          "assets/icons/add_to_cart.svg",
                          color: Colors.deepPurple,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 8.0),
                        child: Text(
                          "Add To Cart",
                          style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
