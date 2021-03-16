import 'package:flutter/material.dart';
import 'package:popaket_ecommerce/models/Product.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  !product.fav
                      ? Container(
                          padding: EdgeInsets.all(5),
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle,
                          ),
                          child: SvgPicture.asset("assets/icons/heart.svg"),
                        )
                      : Container(
                          padding: EdgeInsets.all(5),
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                            color: Color(0xFFFF6464),
                            shape: BoxShape.circle,
                          ),
                          child: SvgPicture.asset("assets/icons/heart.svg"),
                        )
                ],
              ),
            ),
            Expanded(
              child: Center(
                child: Container(
                  margin: EdgeInsets.only(top: 5.0),
                  padding: EdgeInsets.all(kDefaultPaddin),
                  decoration: BoxDecoration(
                    color: product.color,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Hero(
                    tag: "${product.id}",
                    child: Image.asset(product.image),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
                child: Text(
                  product.title,
                  style: TextStyle(
                      color: kTextLightColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            ),
            Center(
              child: Text(
                "\$${product.price}",
                style: TextStyle(
                    color: kTextLightColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 23),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: product.star >= 1 ? Colors.amber : Colors.grey,
                    size: 12,
                  ),
                  Icon(
                    Icons.star,
                    color: product.star >= 2 ? Colors.amber : Colors.grey,
                    size: 12,
                  ),
                  Icon(
                    Icons.star,
                    color: product.star >= 3 ? Colors.amber : Colors.grey,
                    size: 12,
                  ),
                  Icon(
                    Icons.star,
                    color: product.star >= 4 ? Colors.amber : Colors.grey,
                    size: 12,
                  ),
                  Icon(
                    Icons.star,
                    color: product.star >= 5 ? Colors.amber : Colors.grey,
                    size: 12,
                  ),
                  Text(
                    " (${product.total})",
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
