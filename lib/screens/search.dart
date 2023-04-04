import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

import 'package:book_gallery/constants/color_block.dart';
import 'package:book_gallery/stores/books/books_store.dart';
import 'package:book_gallery/utils/utils.dart';
import 'package:book_gallery/widgets/book_item.dart';
import 'package:book_gallery/constants/constants.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class SearchTab extends StatefulWidget {
  const SearchTab({super.key});

  @override
  State<SearchTab> createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {
  final _form = GlobalKey<FormState>();
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final booksStore = Provider.of<BooksStore>(context);
    void submit() {
      if (_form.currentState!.validate()) {
        try {
          setState(() {
            booksStore.searchBook(_textController.text);
          });
        } catch (e) {
          showErrorSnackBar(context);
        }
      }
    }

    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: paddingTiny,
            child: Form(
              key: _form,
              child: TextFormField(
                controller: _textController,
                validator: (value) {
                  if (value == null || value.trim() == "") {
                    return "Please enter a text!";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () => submit(),
                  ),
                ),
                onFieldSubmitted: (_) => submit(),
              ),
            ),
          ),
          const SizedBox(
            height: Spacing.xxSmall,
          ),
          Observer(builder: (_) {
            if (booksStore.fetchBooksFuture.status == FutureStatus.pending) {
              return const Expanded(
                child: Center(
                  child: CircularProgressIndicator(
                    color: ColorBlock.accent,
                  ),
                ),
              );
            }
            if (_textController.text == "") {
              return const Expanded(
                child: Center(
                  child: Text("Search!"),
                ),
              );
            }

            final resultList = booksStore.searchHistory[_textController.text];
            if (resultList != null && resultList.isEmpty) {
              return const Expanded(
                  child: Center(
                child: Text("No result!"),
              ));
            }
            if (resultList != null && resultList.isNotEmpty) {
              return Expanded(
                child: ListView.separated(
                    padding: paddingTiny,
                    itemBuilder: (_, index) => BookItem(
                          book: resultList[index],
                        ),
                    separatorBuilder: (_, __) => const SizedBox(
                          height: Spacing.xxSmall,
                        ),
                    itemCount: resultList.length),
              );
            }
            return const SizedBox();
          })
        ]),
      ),
    );
  }
}
