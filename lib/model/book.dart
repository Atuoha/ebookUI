class Book {
  final int id;
  final String title;
  final String publisher;
  final double rating;
  final String imgUrl;
  final String description;
  final double googleRating;
  final DateTime dateTime;

  Book({
    required this.id,
    required this.title,
    required this.publisher,
    required this.rating,
    required this.dateTime,
    required this.imgUrl,
    required this.description,
    required this.googleRating,
  });
}
