import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../screens/book_details.dart';

// ignore: must_be_immutable
class BookGrid extends StatelessWidget {
  List products;
  BookGrid({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: MasonryGridView.count(
        itemCount: products.length,
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(
                BookDetails.routeName,
                arguments: {
                  'id': products[index].id,
                },
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                products[index].imgUrl,
              ),
            ),
          );
        },
      ),
    );
  }
}
