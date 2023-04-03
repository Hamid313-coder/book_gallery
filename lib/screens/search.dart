import 'package:book_gallery/constants/color_block.dart';
import 'package:book_gallery/constants/constants.dart';
import 'package:book_gallery/widgets/book_item.dart';
import 'package:flutter/material.dart';

class SearchTab extends StatefulWidget {
  const SearchTab({super.key});

  @override
  State<SearchTab> createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: paddingTiny,
          child: Column(children: [
            TextFormField(
              controller: _textController,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                icon: const Icon(Icons.search),
                onPressed: () => print("lsd"),
              )),
            ),
            const SizedBox(
              height: Spacing.xxSmall,
            ),
            BookItem(),
            BookItem(),
            BookItem(),
            BookItem(),
          ]),
        ),
      ),
    );
  }
}
