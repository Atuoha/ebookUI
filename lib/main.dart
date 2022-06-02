import 'package:ebook_ui/provider/books.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/bottom_nav.dart';
import 'screens/book_details.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> BookData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'TiroTelugu'),
        home: const BottomNav(),
        routes: {
          DetailsPage.routeName: (context)=> DetailsPage()
        },
      ),
    );
  }
}
