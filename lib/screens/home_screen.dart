import 'package:ebook_ui/constants/colors.dart';
import 'package:flutter/material.dart';

import '../category_screens/audiobooks.dart';
import '../category_screens/ebooks.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIndex = 0;

  final List _categoryScreens = const[
    EbookScreen(),
    AudioBookScreen(),
  ];

  Widget containerCategory(String title, int indx) {
    return GestureDetector(
      onTap: () {
        setState(() {
          pageIndex = indx;
        });
      },
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: pageIndex == indx ? Colors.white : Colors.transparent,
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              color: kColor,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          padding: const EdgeInsets.all(5),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 230, 227, 227),
          ),
          child: Row(
            children: [
              Expanded(child: containerCategory('Ebook', 0)),
              const SizedBox(width: 5),
              Expanded(child: containerCategory('Audiobooks', 1)),
            ],
          ),
        ),
        Expanded(
          child: _categoryScreens[pageIndex],
        )
      ],
    );
  }
}
