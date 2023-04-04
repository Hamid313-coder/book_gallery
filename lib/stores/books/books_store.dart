import 'package:mobx/mobx.dart';

import 'package:book_gallery/models/book.dart';
import 'package:book_gallery/services/helpers/request_helpers.dart';

part 'books_store.g.dart';

class BooksStore = BooksStoreBase with _$BooksStore;

abstract class BooksStoreBase with Store {
  @observable
  ObservableList<Book> booksList = ObservableList.of([]);

  @observable
  ObservableMap<String, List<Book>> searchHistory = ObservableMap.of({});

  @observable
  ObservableFuture<List<Book>> fetchBooksFuture = ObservableFuture.value([]);

  @action
  Future<void> fetchBooks() async {
    try {
      final future = RequestHelper.getBooks();
      fetchBooksFuture = ObservableFuture(future);
      booksList = ObservableList.of(await future);
    } catch (error) {
      rethrow;
    }
  }

  @action
  Future<void> searchBook(String keyword) async {
    try {
      if (searchHistory.containsKey(keyword)) {
        searchHistory = ObservableMap.of(searchHistory);
        return;
      }

      final future = RequestHelper.getBooks(keyword: keyword);
      fetchBooksFuture = ObservableFuture(future);
      final searchResult = await future;
      searchHistory.addAll({keyword: searchResult});
    } catch (e) {
      rethrow;
    }
  }
}
