class MovieData {
  final String id;
  final String title;
  final String ingredients;
  final String category;
  final String genre;
  final String imageUrl;
  final String tglrelease;
  bool isFavorite = false;

  MovieData(
      {required this.id,
      required this.title,
      required this.ingredients,
      required this.category,
      required this.genre,
      required this.imageUrl,
      required this.tglrelease,
      this.isFavorite = false});
}
