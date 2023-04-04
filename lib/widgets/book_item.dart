import 'package:book_gallery/constants/color_block.dart';
import 'package:book_gallery/constants/constants.dart';
import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  const BookItem(
      {super.key,
      required this.title,
      required this.image,
      required this.authors});

  final String title;
  final String? image;
  final List<dynamic>? authors;

  @override
  Widget build(BuildContext context) {
    return Card(
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
            child: image != null
                ? Image.network(
                    image!,
                    fit: BoxFit.cover,
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
                  title,
                  style: Theme.of(context).textTheme.headline4,
                ),
                const SizedBox(
                  height: Spacing.xSmall,
                ),
                if (authors != null)
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text("Authors: "),
                      if (authors!.length == 1) Text(authors![0].toString()),
                      if (authors!.length > 1)
                        ...authors!
                            .map((author) =>
                                authors!.indexOf(author) == authors!.length - 1
                                    ? Text(author.toString())
                                    : Text("${author.toString()}, "))
                            .toList(),
                    ],
                  ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
