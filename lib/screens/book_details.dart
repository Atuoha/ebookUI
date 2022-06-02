import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import '../constants/colors.dart';
import '../provider/books.dart';
import 'package:intl/intl.dart';

class DetailsPage extends StatelessWidget {
  static const routeName = '/details';

  @override
  Widget build(BuildContext context) {
    var data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    var id = data['id'] as int;

    var book =
        Provider.of<BookData>(context, listen: false).findBookById(id, 'books');

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
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
                  fontSize: 50,
                  color: kColor,
                ),
              ),
            ),
            const SizedBox(height: 10),
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
                      style: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
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
                    style: const TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
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
                            color: Color.fromARGB(57, 182, 180, 180),
                            offset: Offset(-45, 1),
                            spreadRadius: 2,
                            blurRadius: 5,
                            blurStyle: BlurStyle.inner),
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
                          alignment: Alignment.center),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
