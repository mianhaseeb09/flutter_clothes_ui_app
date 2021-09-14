import 'package:flutter/material.dart';
import 'package:flutter_clothes_app/models/clothes.dart';
import 'package:flutter_clothes_app/screens/detail_screen.dart';

class ClothesItem extends StatelessWidget {
  final Clothes clothes;

  const ClothesItem({Key? key, required this.clothes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder:(context)=>DetailScreen(clothes: clothes))
        );
      },

      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.all(8.0),
                  height: 170.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                        image: AssetImage(clothes.imageUrl),
                        fit: BoxFit.fitHeight),
                  ),
                ),
                Positioned(
                  top: 15,
                  right: 20,
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: const Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 15,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        shape: BoxShape.circle),
                  ),
                )
              ],
            ),
            Text(
              clothes.title,
              style: const TextStyle(fontWeight: FontWeight.bold, height: 1.5),
            ),
            Text(
              clothes.subTitle,
              style: const TextStyle(fontWeight: FontWeight.bold, height: 1.5),
            ),
            Text(
              clothes.price,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                  color: Theme.of(context).primaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
