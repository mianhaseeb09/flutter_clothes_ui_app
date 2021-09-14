import 'package:flutter/material.dart';
import 'package:flutter_clothes_app/models/clothes.dart';
import 'package:flutter_clothes_app/widgets/categories_list.dart';
import 'package:flutter_clothes_app/widgets/clothes_item.dart';

class NewArrival extends StatelessWidget {
  final clothesList = Clothes.generateClothes();

   NewArrival({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
        child: Column(
      children: [
        const CategoriesList(
          title: 'New Arrival',
        ),
        SizedBox(
            height: 280,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => ClothesItem(
                clothes:clothesList[index],),
              separatorBuilder: (_, index) => const SizedBox(
                width: 10.0,
              ),
              itemCount: clothesList.length),)
      ],
    ));
  }
}
