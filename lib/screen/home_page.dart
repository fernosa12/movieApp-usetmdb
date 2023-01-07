import 'package:carousel_slider/carousel_slider.dart';
import 'package:felix/movie/models/movie_models.dart';
import 'package:felix/providers/moviedata_provider.dart';
import 'package:felix/screen/image_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: Image.asset('assets/images/Felix.png')),
              ),
            ],
          ),
          centerTitle: true,
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Discover Movie',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                        shape: const StadiumBorder(),
                        side: const BorderSide(color: Colors.black54),
                        foregroundColor: Colors.black),
                    child: const Text(
                      'See All',
                    ))
              ],
            ),
          ),
        ),
        const WidgetDisocverMovieSlide()
      ],
    ));
  }
}

class WidgetDisocverMovieSlide extends StatefulWidget {
  const WidgetDisocverMovieSlide({super.key});

  @override
  State<WidgetDisocverMovieSlide> createState() =>
      _WidgetDisocverMovieSlideState();
}

class _WidgetDisocverMovieSlideState extends State<WidgetDisocverMovieSlide> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        context.read<MovieGetDiscoverProvider>().getDicover(context);
      },
    );
    //*Karena ini stateful initstate untuk panggil provider harus ada initstate seperti di atas
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Consumer<MovieGetDiscoverProvider>(
        builder: (_, provider, __) {
          if (provider.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (provider.movies.isNotEmpty) {
            return CarouselSlider.builder(
                itemCount: provider.movies.length,
                itemBuilder: (context, index, realIndex) {
                  final movie = provider.movies[index];
                  return ItenMovie(movie);
                },
                options: CarouselOptions(
                  height: 300,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                ));
          }
          return Container(
            child: const Center(
              child: Text('Movie Not Found'),
            ),
          );
        },
      ),
    );
  }
}

class ItenMovie extends Container {
  //*Alasan di extends dengan container adalah agar bisa di rounded kan karena di container ada "decoration"
  final MovieModel movie;

  ItenMovie(this.movie, {super.key});
  @override
  // TODO: implement clipBehavior
  Clip get clipBehavior => Clip.hardEdge;
  //*Clip Behavior di sini berfungsi untuk membuat atau nenampilkan border radius circular pada konten di slidable
  @override
  // TODO: implement decoration
  Decoration? get decoration =>
      BoxDecoration(borderRadius: BorderRadius.circular(20));
  @override
  // TODO: implement child
  Widget? get child => Stack(
        //*Stack di sini di perlukan untuk mengatur posisi seperti kebutuhan "title,rating,dll." di dalam carousel Slider ini
        children: [
          ImageWidgetNetwork(
            imagesrc: "${movie.backdropPath}",
            //*Ketika data list bisa null seperti "backdropPath" di atas maka harus menggunakan code seperti di atas
            //*Alasan "AppsConstant.imageurlW500" di panggil karena data image sebagian ada di "imageurlW500"
            height: 300,
            width: double.infinity,
          ),
          Container(
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Colors.black87])),
            //*Code container di sini adalah untuk menghias gambar yg ada di carousel_slider
          ),
          Positioned(
              bottom: 16.0,
              left: 16.0,
              right: 16.0,

              //*Positioned berguna untuk mengatur list yang di bungkus pada widget stack
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ImageWidgetNetwork(
                    imagesrc: "${movie.posterPath}",
                    //*Ketika data list bisa null seperti "backdropPath" di atas maka harus menggunakan code seperti di atas
                    //*Alasan "AppsConstant.imageurlW500" di panggil karena data image sebagian ada di "imageurlW500"
                    height: 180,
                    width: 120,
                    radius: 20,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    movie.title,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star_rounded,
                        color: Colors.amber,
                      ),
                      Text(
                        " ${movie.voteAverage} (${movie.voteCount})",
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                      ),
                    ],
                  ),
                ],
              ))
        ],
      );
}
