import 'package:fit_studio/components/product_card.dart';
import 'package:fit_studio/models/products_list.dart';
import 'package:flutter/material.dart';

import 'details_screen.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: MediaQuery.of(context).size.height * 0.06,
        leadingWidth: MediaQuery.of(context).size.width * 0.7,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Row(
            children: [
              Text("FitStudio", style: TextStyle(color: colorScheme.onBackground, fontSize: 16, fontWeight: FontWeight.w600,),),
              const CircleAvatar(
                backgroundImage: AssetImage("assets/logo.webp"),
                radius: 25,
                backgroundColor: Colors.transparent
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_bag_rounded,
              color: colorScheme.onBackground,
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.65,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
              ),
              physics: const BouncingScrollPhysics(),
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                String url = products[index].url;
                String itemName = products[index].itemName;
                String price = products[index].price;
                String description = products[index].description;
                return ProductCard(
                  itemName: itemName,
                  price: price,
                  url: url,
                  press: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        transitionDuration: const Duration(milliseconds: 500),
                        reverseTransitionDuration:
                            const Duration(milliseconds: 500),
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            FadeTransition(
                          opacity: animation,
                          child: DetailsPage(
                            url: url,
                            itemName: itemName,
                            price: price,
                            description: description,
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
