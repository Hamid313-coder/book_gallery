class Book {
  final String title;
  final List<String>? authors;
  final String? image;
  final String? publisher;
  final String? description;

  const Book(
      {required this.title,
      required this.authors,
      required this.image,
      required this.publisher,
      required this.description});

  factory Book.fromJson(Map<String, dynamic> json) => Book(
      title: json["volumeInfo"]["title"],
      authors: json["volumeInfo"]["authors"],
      image: json["volumeInfo"]["imageLinks"]["thumbnail"],
      publisher: json["volumeInfo"]["publisher"],
      description: json["volumeInfo"]["description"]);
}
