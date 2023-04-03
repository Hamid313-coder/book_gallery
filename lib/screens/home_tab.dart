import 'package:book_gallery/constants/constants.dart';
import 'package:book_gallery/widgets/book_item.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: paddingTiny,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text("home tab"),
              BookItem(),
            ],
          )),
    );
  }
}
