import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import '../constants/colors.dart';
import '../provider/books.dart';
import 'package:intl/intl.dart';
import 'package:readmore/readmore.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class AudioBookDetails extends StatelessWidget {
  static const routeName = '/audio-details';

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
      'audiobooks',
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
              padding: const EdgeInsets.only(left: 20),
              child: Stack(
                children: [
                  Container(
                    height: 310,
                    width: double.infinity,
                    decoration: BoxDecoration(
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
                      ],
                      Text(
                        '(${book.googleRating} Reviews)',
                        style: intro,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Card(
                        color: Colors.white,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const CircleAvatar(
                          radius: 28,
                          backgroundColor: Colors.transparent,
                          child: Center(
                            child: Icon(
                              Icons.play_arrow,
                              color: kColor,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Chapter 2: Action Figure',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                            Row(children: [
                              const Text('9:14'),
                              const SizedBox(width: 5),
                              Container(
                                width: 210,
                                child: const StepProgressIndicator(
                                  totalSteps: 100,
                                  currentStep: 80,
                                  size: 6,
                                  padding: 0,
                                  selectedColor: Colors.deepOrange,
                                  unselectedColor:
                                      Color.fromARGB(255, 210, 208, 208),
                                  roundedEdges: Radius.circular(10),
                                ),
                              ),
                            ])
                          ])
                    ],
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
