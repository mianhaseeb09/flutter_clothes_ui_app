import 'package:flutter/material.dart';
import 'package:flutter_clothes_app/widgets/best_sell.dart';
import 'package:flutter_clothes_app/widgets/custom_app_bar.dart';
import 'package:flutter_clothes_app/widgets/new_arrival.dart';
import 'package:flutter_clothes_app/widgets/search_input.dart';

class HomeScreen extends StatelessWidget {
 final bottomList=['home','menu','heart','user'];

   HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(),
            SearchInput(),
            NewArrival(),
            const BestSell(),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: bottomList.map((e)=>BottomNavigationBarItem(
            label: e,
            icon: Image.asset('assets/icons/$e.png',width: 25.0,)
        )).toList(),
      ),
    );
  }
}
