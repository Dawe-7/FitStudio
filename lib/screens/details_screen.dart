import 'package:fit_studio/routes/app.routes.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../constants/colors.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({
    Key? key,
    required this.itemName,
    required this.url,
    required this.price,
    required this.description,
  }) : super(key: key);

  final String itemName;
  final String url;
  final String price;
  final String description;

  @override
  Widget build(BuildContext context) {
    final imagePicker = ImagePicker();
    Future imagePickerMethod(ImageSource source) async {
      final pick = await imagePicker.pickImage(source: source);
    }
    return Scaffold(
      extendBodyBehindAppBar: true,
      // app bar
      appBar: AppBar(
        title: Text(itemName),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(),
      ),
      body: Stack(children: [
        Hero(
          tag: url,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(url),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
        ),

        // product name and price
        Positioned(
          top: MediaQuery.of(context).size.height * 0.65,
          child: Container(
            height: 280,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(24.0),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(35.0),
                  topLeft: Radius.circular(35.0)),
              color: Theme.of(context).colorScheme.background,
              boxShadow: [
                BoxShadow(
                    color: lightTextColor.withOpacity(.2),
                    blurRadius: 7,
                    offset: const Offset(0, 3))
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemName,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  price,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                // product description
                Text(
                  description,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: Theme.of(context)
                        .textTheme
                        .caption!
                        .fontSize! * 1.2,
                    fontWeight: Theme.of(context).textTheme.caption!.fontWeight,
                  ),
                ),

                // add to cart button
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 45,
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: ElevatedButton(
                        onPressed: () {
                          imagePickerMethod(ImageSource.camera);
                        },
                        child: Text(
                          "Preview",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 45,
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Add to Cart",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                        ),
                      ),
                    )
                  ],
                ),

              ],
            ),
          ),
        ),
      ]),
    );
  }
}
