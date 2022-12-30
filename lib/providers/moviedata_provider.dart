import 'package:dio/dio.dart';
import 'package:felix/models/movie_detail.dart';
import 'package:flutter/cupertino.dart';

class MovieProvider with ChangeNotifier {
  List<MovieData> dataMovie = [];
  Future<void> fetchData() async {
    String url =
        'https://online-movie-database.p.rapidapi.com/title/get-ratings?tconst=tt0944947';
    var dio = Dio();
    var response = await dio.get(url);
    print(response.statusCode);
  }
}
