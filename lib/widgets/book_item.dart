import 'package:book_gallery/models/book.dart';
import 'package:book_gallery/screens/book_details.dart';
import 'package:book_gallery/utils/utils.dart';
import 'package:flutter/material.dart';

import 'package:book_gallery/constants/color_block.dart';
import 'package:book_gallery/constants/constants.dart';

class BookItem extends StatelessWidget {
  const BookItem({
    super.key,
    required this.book,
  });
  final Book book;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => BookDetailsScreen(book: book))),
      child: Card(
        color: ColorBlock.blueGrey,
        shape: const RoundedRectangleBorder(borderRadius: borderRadiusMedium),
        child: Container(
          padding: paddingDefault,
          child: Row(children: [
            Container(
              width: Spacing.huge,
              height: Spacing.xHuge,
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(
                color: ColorBlock.blueGrey,
                borderRadius: borderRadius,
              ),
              child: book.image != null
                  ? Hero(
                      tag: book.title,
                      child: Image.network(
                        book.image!,
                        fit: BoxFit.cover,
                      ),
                    )
                  : null,
            ),
            const SizedBox(
              width: Spacing.small,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    book.title,
                    style: Theme.of(context).textTheme.headline4,
                    maxLines: 2,
                    overflow: TextOverflow.fade,
                  ),
                  const SizedBox(
                    height: Spacing.xSmall,
                  ),
                  if (book.authors != null)
                    Wrap(
                      children: [
                        const Text("Authors: "),
                        if (book.authors!.length == 1)
                          Text(book.authors![0].toString()),
                        if (book.authors!.length > 1)
                          ...showAuthors(book.authors!),
                      ],
                    ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
