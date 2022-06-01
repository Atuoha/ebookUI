import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/gridview.dart';
import '../provider/books.dart';

class EbookScreen extends StatelessWidget {
  const EbookScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BookGrid(
      products:
          Provider.of<BookData>(context, listen: false).availableBooks,
    );
  }
}
