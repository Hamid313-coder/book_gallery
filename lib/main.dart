import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:book_gallery/constants/theme.dart';
import 'package:book_gallery/screens/home.dart';
import 'package:book_gallery/stores/books/books_store.dart';

void main() {
  runApp(const MyApp());
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
