import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import '../constants/colors.dart';
import '../provider/books.dart';
import 'package:intl/intl.dart';
import 'package:readmore/readmore.dart';

class BookDetails extends StatelessWidget {
  static const routeName = '/book-details';

  @override
  Widget build(BuildContext context) {
    var data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    var id = data['id'] as int;

    var book = Provider.of<BookData>(
      context,
      listen: false,
    ).findBookById(
      id,
      'books',
    );

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );

    const intro = TextStyle(
        color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 15);
    const staredColor = Color.fromARGB(255, 255, 153, 0);
    const unStaredColor = Color.fromARGB(255, 221, 219, 217);

    Widget star(Color color) {
      return Icon(Icons.star, color: color, size: 25);
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.chevron_left,
            color: kColor,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(
              right: 15.0,
            ),
            child: Icon(
              Icons.more_horiz,
              color: kColor,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
              ),
              child: Text(
                book.type,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.deepOrange,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
              ),
              child: Text(
                book.title,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 40,
                  color: kColor,
                ),
              ),
            ),
            // const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Published from ',
                      style: intro,
                      children: [
                        TextSpan(
                          text: book.publisher,
                          style: const TextStyle(
                            color: kColor,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  Text(
                    DateFormat.yMMMMd().format(book.dateTime),
                    style: intro,
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Stack(
                children: [
                  Container(
                    height: 310,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(57, 200, 197, 197),
                          offset: Offset(-45, 1),
                          spreadRadius: 2,
                          blurRadius: 5,
                          blurStyle: BlurStyle.inner,
                        ),
                      ],
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                      ),
                      image: DecorationImage(
                        image: NetworkImage(
                          book.imgUrl,
                        ),
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.deepOrange,
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.info_outline,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 50,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: kColor,
                          ),
                          child: Center(
                            child: Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: const [
                                Icon(
                                  Icons.play_arrow_outlined,
                                  color: Colors.white,
                                  size: 25,
                                ),
                                Text(
                                  'Audio Book',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        book.rating.toString(),
                        style: const TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                          color: kColor,
                        ),
                      ),
                      const SizedBox(width: 5),
                      if (book.rating == 5) ...[
                        star(staredColor),
                        star(staredColor),
                        star(staredColor),
                        star(staredColor),
                        star(staredColor),
                      ] else if (book.rating >= 4) ...[
                        star(staredColor),
                        star(staredColor),
                        star(staredColor),
                        star(staredColor),
                        star(unStaredColor),
                      ] else if (book.rating >= 3) ...[
                        star(staredColor),
                        star(staredColor),
                        star(staredColor),
                        star(unStaredColor),
                        star(unStaredColor),
                      ] else if (book.rating >= 2) ...[
                        star(staredColor),
                        star(staredColor),
                        star(unStaredColor),
                        star(unStaredColor),
                        star(unStaredColor),
                      ] else ...[
                        star(staredColor),
                        star(unStaredColor),
                        star(unStaredColor),
                        star(unStaredColor),
                        star(unStaredColor),
                      ]
                    ],
                  ),
                  Text(
                    '${book.googleRating} Ratings on Google Play',
                    style: intro,
                  ),
                  ReadMoreText(
                    book.description,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                      color: kColor,
                      fontSize: 20,
                    ),
                    trimLines: 3,
                    colorClickableText: Colors.deepOrange,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Read more',
                    trimExpandedText: 'Read less',
                    moreStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
