import 'package:book_gallery/models/book.dart';
import 'package:book_gallery/services/helpers/request_helpers.dart';
import 'package:mobx/mobx.dart';

part 'books_store.g.dart';

class BooksStore = BooksStoreBase with _$BooksStore;

abstract class BooksStoreBase with Store {
  static ObservableFuture<List<Book>> emptyResponse =
      ObservableFuture.value([]);

  @observable
  ObservableList<Book> booksList = ObservableList.of([]);

  @observable
  ObservableFuture<List<Book>> fetchBooksFuture = emptyResponse;

  @computed
  bool get hasResults =>
      fetchBooksFuture != emptyResponse &&
      fetchBooksFuture.status == FutureStatus.fulfilled;

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
}
