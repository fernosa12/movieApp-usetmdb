import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:felix/movie/models/movie_models.dart';
import 'package:felix/repositories/movie_repositories.dart';

class MovieRepositoryImplement implements MovieRepository {
  final Dio _dio;

  MovieRepositoryImplement(this._dio);

  @override
  Future<Either<String, MovieResponseModels>> getDiscover(
      {int page = 1}) async {
    try {
      final result =
          await _dio.get('/discover/movie', queryParameters: {'page': page});
      if (result.statusCode == 200 && result.data != null) {
        final model = MovieResponseModels.fromMap(result.data);
        return Right(model);
      }
      return left('Error get discover movie');
    } on DioError catch (e) {
      if (e.response != null) {
        return left(e.response.toString());
      }
      return left('Another error on get discover movie');
      //* Jadi "Left" adalah untuk menangkap pesan error
      //* Jadi pengkondisian di atas adalah ketika "response" nya tidak sama dengan null maka akan menampilkan data dari "response"
      //* Dan apabila resnponse nya null maka akan menampilkan error massage "Another error on get discover Movie"

    }
  }
}
