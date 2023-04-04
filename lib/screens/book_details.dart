import 'package:flutter/material.dart';

import 'package:book_gallery/constants/color_block.dart';
import 'package:book_gallery/constants/constants.dart';
import 'package:book_gallery/models/book.dart';
import 'package:book_gallery/utils/utils.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({required this.book, super.key});

  final Book book;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            if (book.image != null)
              Hero(
                  tag: book.title,
                  child: Container(
                    color: ColorBlock.blueGrey,
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Padding(
                        padding: paddingTiny,
                        child: Image.network(
                          book.image!,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  )),
            Padding(
                padding: paddingDefault,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(book.title,
                        style: Theme.of(context)
                            .textTheme
                            .headline3!
                            .copyWith(color: ColorBlock.accent)),
                    const SizedBox(
                      height: Spacing.medium,
                    ),
                    Text(book.description ?? ""),
                    const SizedBox(
                      height: Spacing.medium,
                    ),
                    if (book.authors != null)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Authors: ",
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(color: ColorBlock.accent),
                          ),
                          const SizedBox(
                            height: Spacing.tiny,
                          ),
                          Wrap(
                            children: showAuthors(book.authors!),
                          )
                        ],
                      ),
                    const SizedBox(
                      height: Spacing.medium,
                    ),
                    if (book.publisher != null)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Publisher: ",
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(color: ColorBlock.accent),
                          ),
                          const SizedBox(
                            height: Spacing.tiny,
                          ),
                          Text(book.publisher!),
                        ],
                      )
                  ],
                ))
          ],
        ),
      )),
    );
  }
}
