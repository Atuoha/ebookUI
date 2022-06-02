import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';

import '../components/gridview.dart';
import '../constants/colors.dart';
import '../model/book.dart';
import '../provider/books.dart';
import '../screens/audio_book_details.dart';

class AudioBookScreen extends StatelessWidget {
  const AudioBookScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var products =
        Provider.of<BookData>(context, listen: false).availableAudioBooks;
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
                AudioBookDetails.routeName,
                arguments: {
                  'id': products[index].id,
                },
              );
            },
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    products[index].imgUrl,
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: CircleAvatar(
                      backgroundColor: Colors.grey.withOpacity(
                        0.5,
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.play_arrow_sharp,
                          color: Colors.white,
                        ),
                      )),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
