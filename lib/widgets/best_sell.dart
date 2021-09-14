import 'package:flutter/material.dart';
import 'package:flutter_clothes_app/widgets/categories_list.dart';

class BestSell extends StatelessWidget {
  const BestSell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CategoriesList(
          title: 'Best of Sell',
        ),
        Card(
          margin: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 10.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'assets/images/best1.png',
                          width: 80.0,
                        )),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Miniso Woman Oversize',
                          style:  TextStyle(
                              height: 1.5, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          'T-shirts',
                           style:  TextStyle(
                              height: 1.5, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '\$79.9',
                          style: TextStyle(
                              height: 1.5, fontWeight: FontWeight.bold,
                          color:Theme.of(context).primaryColor),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: const Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 15.0,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        shape: BoxShape.circle),
                  ))
            ],
          ),
        )
      ],
    );
  }
}
