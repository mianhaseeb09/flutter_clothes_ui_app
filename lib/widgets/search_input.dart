import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  final tagsList = ['Woman', 'T-Shirts', 'Dress'];

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 25, left: 25, right: 25),
        child: Column(
          children: [
            Row(
              children: [
                Flexible(
                  flex: 1,
                  child: TextField(
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none,
                        ),
                        hintText: 'Search Aesthatic Shirt',
                        hintStyle:
                            const TextStyle(color: Colors.grey, fontSize: 18.0),
                        prefixIcon: Container(
                            padding: const EdgeInsets.all(15.0),
                            child: Image.asset('assets/icons/search.png',
                                width: 20.0))),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Image.asset(
                    'assets/icons/filter.png',
                    width: 25,
                  ),
                )
              ],
            ),
            Row(
                children: tagsList
                    .map((e) => Container(
                          margin: const EdgeInsets.only(right:10,top:10 ),
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Theme.of(context).accentColor),
                          child: Text(
                            e,
                            style: const TextStyle(color: Colors.grey),
                          ),
                        ))
                    .toList())
          ],
        ));
  }
}
