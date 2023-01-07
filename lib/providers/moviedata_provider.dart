import 'package:felix/movie/models/movie_models.dart';
import 'package:felix/repositories/movie_repositories.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:provider/provider.dart';

class MovieGetDiscoverProvider with ChangeNotifier {
  final MovieRepository _movieRepository;

  MovieGetDiscoverProvider(this._movieRepository);
  bool _isLoading = false;
  bool get isLoading => _isLoading;
  final List<MovieModel> _movies = [];
  List<MovieModel> get movies => _movies;
  void getDicover(BuildContext context) async {
    _isLoading = true;
    notifyListeners();

    final result = await _movieRepository.getDiscover();
    result.fold((errorMassage) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(errorMassage)));
      //*ScaffoldMessenger membutuhkan sebuah parameter "context" dari function yg kita buat
      //* Dan "context" dari ScaffoldMessenger di sini di dapat dari "getDiscover"
      _isLoading = false;
      notifyListeners();
      //*Alasan "isLoading" di buat pada method di sini adalah karena kita harus memberitahu tampilan kita
      //*jika "errorMassage" itu data nya sudah tidak loading lagi dan harus membuat ulang menjadi "false"!

      return;
    }, (response) {
      _movies.clear();
      //*Code di atas adalah untuk agar ketika aplikasi mendapatkan data list dari "addAll" tidak terjadi duplikat data
      //*maka dari itu di buat code "_movies.clear" di dalam method
      _movies.addAll(response.results);
      //*addAll adalah untuk menambahkan iterable atau list pada variabe kita
      //* dan untuk ambil nya adalah dari "response.(data yang berbentuk list dalam class Models kita)"
      _isLoading = false;
      notifyListeners();
      return null;
    });
  }
}
