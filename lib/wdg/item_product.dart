import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_classifiedappclone/wdg/star_rating.dart';
import 'package:flutter_icons/ionicons.dart';

import '../Model/product.dart';
import '../UI/Widgets/product.dart';

class TrendingItem extends StatelessWidget {
  final Product product;
  final List<Color> gradientColors;

  TrendingItem({required this.product, required this.gradientColors});

  @override
  Widget build(BuildContext context) {
    double trendCardWidth = 140;

    return GestureDetector(
      child: Stack(
        children: <Widget>[
          Container(
            width: trendCardWidth,
            child: Card(
              elevation: 2,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Spacer(),
                        Icon(
                          Ionicons.getIconData("ios-heart-empty"),
                          color: Colors.black54,
                        )
                      ],
                    ),
                    _productImage(),
                    _productDetails()
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ProductPage(
              product: product,
            ),
          ),
        );
      },
    );
  }

  _productImage() {
    return Stack(
      children: <Widget>[
        Center(
          child: Container(
            width: 75,
            height: 75,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(product.icon), fit: BoxFit.contain),
            ),
          ),
        )
      ],
    );
  }

  _productDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          product.company,
          style: TextStyle(fontSize: 12, color: Color(0XFFb1bdef)),
        ),
        Text(
          product.name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
        ),
        StarRating(rating: product.rating, size: 10),
        Row(
          children: <Widget>[
            Text(product.price,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.red)),
          ],
        )
      ],
    );
  }
}
