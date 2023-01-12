import 'package:flutter/material.dart';

import '../constants/colors.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.itemName,
    required this.url,
    required this.price,
    required this.press
  }) : super(key: key);

  final String itemName;
  final String url;
  final String price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Center(
        child: Container(
          height: 260.0,
          width: 170.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                  color: lightTextColor.withOpacity(.2),
                  blurRadius: 7,
                  offset: const Offset(0, 3))
            ],
          ),
          child: Column(
            children: [
              Hero(
                tag: url,
                child: Container(
                  margin: const EdgeInsets.only(
                    top: 10.0,
                  ),
                  height: 130.0,
                  width: 130.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(url),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: Text(
                                      itemName,
                                      style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600,),
                                    ),
                                  ),
                                   Flexible(
                                    child: Text(price),
                                  ),
                                  Flexible(
                                    child: Row(
                                      children: [
                                        starIcon(Colors.yellow[700]!),
                                        starIcon(Colors.yellow[700]!),
                                        starIcon(Colors.yellow[700]!),
                                        starIcon(Colors.yellow[700]!),
                                        starIcon(Colors.grey[200]!),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Flexible(
                                child: Container(
                                  height: 30.0,
                                  width: 30.0,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Material(
                                    color: Colors.grey[200],
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: InkWell(
                                      onTap: () {},
                                      child: const Center(
                                        child: Icon(
                                          Icons.bookmark,
                                          size: 15.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 10.0),
                          width: 130.0,
                          height: 30.0,
                          decoration: BoxDecoration(
                            color: redColor,
                            borderRadius: BorderRadius.circular(12.0),
                            boxShadow: [
                              BoxShadow(
                                color: redColor.withOpacity(0.2),
                                offset: const Offset(0.0, 10.0),
                                spreadRadius: -5.0,
                                blurRadius: 10.0,
                              ),
                            ],
                          ),
                          child: Material(
                            color: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: InkWell(
                              onTap: () {},
                              child: const Center(
                                child: Text(
                                  'Add to Cart',
                                  style: TextStyle(
                                      fontSize: 8.0, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Icon starIcon(Color color) {
    return Icon(
      Icons.star,
      size: 10.0,
      color: color,
    );
  }
}
