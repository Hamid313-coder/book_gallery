import 'package:book_gallery/constants/color_block.dart';
import 'package:book_gallery/constants/constants.dart';
import 'package:book_gallery/constants/theme.dart';
import 'package:book_gallery/screens/home.dart';
import 'package:book_gallery/stores/books/books_store.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<BooksStore>(
      create: (_) => BooksStore(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: getTheme(context),
        home: const Home(),
      ),
    );
  }
}
