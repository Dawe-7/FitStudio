class ProductItem {
  final String url, itemName, price, description;

  ProductItem({
    required this.url,
    required this.itemName,
    required this.price,
    required this.description
  });
}

List<ProductItem> products = [
  ProductItem(
    url: 'assets/bg.jpg',
    itemName: "Nike Free",
    price: "KES 2,000",
    description: "Perfect for when you want it to be just you and your run. The Nike Free Run 5.0 Next Nature strips away what’s not essential, leaving you free to concentrate on your stride and the landscape around you.",
  ),
  ProductItem(
    url: 'assets/vans.jpg',
    itemName: "Vans Old Skool",
    price: "KES 3,000",
    description: "Vans Old Skool skate shoes are one of the most fashionable and trendy sneakers. They have found favour among so many people because of their awesome design and fashionable look. The sole is made from rubber and that guarantees you long service. Order your pair from Forstars Footwear TODAY and upgrade your shoe game.",
  ),
  ProductItem(
    url: 'assets/supreme.jpg',
    itemName: "Supreme Sneakers",
    price: "KES 2,500",
    description: "SUPREME is a streetwear clothing label started by James Jebbia in 1994. Its first location was on Lafayette Street in New York City's famed SoHo district, located at the heart of the downtown neighborhood's shopping hub.",
  ),
  ProductItem(
    url: 'assets/nike_dunk.jpg',
    itemName: "Nike Dunk Low",
    price: "KES 4,000",
    description: "The Nike Dunk Low is an easy score for your kiddo’s closet. This mid-‘80s hoops icon returns with super-durable construction and original colors. Add in a rubber sole for traction and this one's a slam dunk for young sneakerheads.",
  ),
];
