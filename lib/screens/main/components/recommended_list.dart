import '../../../app_properties.dart';
import '../../../models/product.dart';
import '../../../screens/product/product_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class RecommendedList extends StatelessWidget {
  List<Product> products = [
    Product('assets/images/apple-smart-watch-series-5.jpg', 'Apple Smart Watch', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ', 4250),
    Product('assets/images/apple-smart-watch-SE.jpg', 'Apple Smart Watch SE', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ', 10),
    Product('assets/images/samsung-a17.jpg', 'Samsung Galaxy A71', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ', 3440),
    Product('assets/images/apple-ipad-pro-2020.jpg', 'Apple iPad Pro 2020', 'Apple iPad Pro 2020 – 12.9″ 128GB Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ', 30),
    Product('assets/images/samsung-tab-galaxy-tab-s6.jpg', 'Samsung Galaxy Tab S6 T865', 'Samsung Galaxy Tab Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. .', 8040),
    Product('assets/images/hp-22-c00c0.jpg', ' HP 22 C0020 All-in-One Desktop PC i5 9400', 'HP 22 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ', 9570),
    Product('assets/images/iphone-se-2020.jpg', 'iPhone SE 2020 64 GB', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',4440),
    Product('assets/images/Lg-49-4k.png', 'LG 49″ 4K Smart U-Slim – Smart Televizyon...', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ', 6041),
    Product('assets/headphone_9.png', 'Headphones', 'Description', 72.33),


  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              IntrinsicHeight(
                child: Container(
                  margin: const EdgeInsets.only(left: 16.0, right: 8.0),
                  width: 4,
                  color: mediumYellow,
                ),
              ),
              Center(
                  child: Text(
                'Recommended',
                style: TextStyle(
                    color: darkGrey,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              )),
            ],
          ),
        ),
        Flexible(
          child: Container(
            padding: EdgeInsets.only(top: 16.0, right: 16.0, left: 16.0),
            child: StaggeredGridView.countBuilder(
    physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              crossAxisCount: 4,
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) => new ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child: InkWell(
                      onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => ProductPage(product:products[index]))),
                      child: Material(
                        color: Colors.black.withOpacity(.2),
                        elevation: 100,
                        child: Container(
                            margin: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [Colors.white, Colors.white],
                                 ),
                            ),
                            child: Hero(
                                tag: products[index].image,
                                child: Image.asset(products[index].image))),
                      ),
                    ),
                  ),
              staggeredTileBuilder: (int index) =>
                  new StaggeredTile.count(2, index.isEven ? 3 : 2),
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
            ),
          ),
        ),
      ],
    );
  }
}
