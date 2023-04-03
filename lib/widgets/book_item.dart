import 'package:book_gallery/constants/color_block.dart';
import 'package:book_gallery/constants/constants.dart';
import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  const BookItem({super.key});

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
            child: Image.asset(
              "images/ff.png",
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: Spacing.small,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Search Engine Optimizaiton",
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(
                height: Spacing.xSmall,
              ),
              Text("Authors: "),
            ],
          ),
        ]),
      ),
    );
  }
}
