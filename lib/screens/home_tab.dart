import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:book_gallery/constants/color_block.dart';
import 'package:book_gallery/constants/constants.dart';
import 'package:book_gallery/stores/books/books_store.dart';
import 'package:book_gallery/utils/utils.dart';
import 'package:book_gallery/widgets/book_item.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    final booksStore = Provider.of<BooksStore>(context);
    if (booksStore.booksList.isEmpty) {
      try {
        booksStore.fetchBooks();
      } catch (e) {
        showErrorSnackBar(context);
      }
    }
    return SafeArea(
      child: Scaffold(
        body: Observer(
          builder: (_) {
            final books = booksStore.booksList;
            if (booksStore.fetchBooksFuture.status == FutureStatus.pending) {
              return const Center(
                child: CircularProgressIndicator(
                  color: ColorBlock.accent,
                ),
              );
            }
            if (books.isEmpty) {
              return const Center(
                child: Text("No Book Available!"),
              );
            }
            return ListView.separated(
                padding: paddingTiny,
                itemBuilder: (_, index) => BookItem(
                      book: books[index],
                    ),
                separatorBuilder: (_, __) => const SizedBox(
                      height: Spacing.xxSmall,
                    ),
                itemCount: books.length);
          },
        ),
      ),
    );
  }
}
