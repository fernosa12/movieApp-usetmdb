import 'package:dio/dio.dart';
import 'package:felix/app_constant.dart';
import 'package:felix/providers/moviedata_provider.dart';
import 'package:felix/repositories/movie_repositories.dart';
import 'package:felix/repositories/movie_repository_impl.dart';
import 'package:felix/screen/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  FlutterNativeSplash.remove();
  final dioOption = BaseOptions(
      baseUrl: AppConstant.baseurl,
      queryParameters: {'api_key': AppConstant.apikey});
  final Dio dio = Dio(dioOption);
  final MovieRepository movieRepository = MovieRepositoryImplement(dio);
  runApp(MyApp(
    movieRepository: movieRepository,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.movieRepository});
  final MovieRepository movieRepository;
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MovieGetDiscoverProvider(movieRepository),
        )
      ],
      child: MaterialApp(
        title: 'Felix',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}
