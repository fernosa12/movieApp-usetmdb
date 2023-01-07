import 'package:dartz/dartz.dart';
import 'package:felix/movie/models/movie_models.dart';

abstract class MovieRepository {
  Future<Either<String, MovieResponseModels>> getDiscover({int page = 1});
  //*jadi alasan koding di atas di buat adalah ketika di provider parameter nya tidak di isi maka secara otomatis menjadi "page 1"
  //* Either kode di atas adalah untuk menangkap pesan error dengan type data yang sesuai pada "trhow" di trycatch pada class "MoovieRepositoryImpl"
}
