import 'package:flutter/material.dart';
import 'package:book_gallery/constants/color_block.dart';

void showErrorSnackBar(BuildContext context) =>
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          "Somethign went wrong!",
        ),
        backgroundColor: ColorBlock.red,
        behavior: SnackBarBehavior.floating,
      ),
    );

List<Text> showAuthors(List<dynamic> authors) => authors
    .map((author) => authors.indexOf(author) == authors.length - 1
        ? Text(author.toString())
        : Text("${author.toString()}, "))
    .toList();
