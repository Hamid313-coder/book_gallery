// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'books_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$BooksStore on BooksStoreBase, Store {
  Computed<bool>? _$hasResultsComputed;

  @override
  bool get hasResults =>
      (_$hasResultsComputed ??= Computed<bool>(() => super.hasResults,
              name: 'BooksStoreBase.hasResults'))
          .value;

  late final _$booksListAtom =
      Atom(name: 'BooksStoreBase.booksList', context: context);

  @override
  ObservableList<Book> get booksList {
    _$booksListAtom.reportRead();
    return super.booksList;
  }

  @override
  set booksList(ObservableList<Book> value) {
    _$booksListAtom.reportWrite(value, super.booksList, () {
      super.booksList = value;
    });
  }

  late final _$fetchBooksFutureAtom =
      Atom(name: 'BooksStoreBase.fetchBooksFuture', context: context);

  @override
  ObservableFuture<List<Book>> get fetchBooksFuture {
    _$fetchBooksFutureAtom.reportRead();
    return super.fetchBooksFuture;
  }

  @override
  set fetchBooksFuture(ObservableFuture<List<Book>> value) {
    _$fetchBooksFutureAtom.reportWrite(value, super.fetchBooksFuture, () {
      super.fetchBooksFuture = value;
    });
  }

  late final _$fetchBooksAsyncAction =
      AsyncAction('BooksStoreBase.fetchBooks', context: context);

  @override
  Future<void> fetchBooks() {
    return _$fetchBooksAsyncAction.run(() => super.fetchBooks());
  }

  @override
  String toString() {
    return '''
booksList: ${booksList},
fetchBooksFuture: ${fetchBooksFuture},
hasResults: ${hasResults}
    ''';
  }
}
