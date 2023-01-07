import 'package:felix/app_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageWidgetNetwork extends StatelessWidget {
  const ImageWidgetNetwork(
      {super.key,
      required this.imagesrc,
      required this.height,
      required this.width,
      this.radius = 0.0});
  final String imagesrc;
  final double height;
  final double width;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: Image.network(
        "${AppConstant.imageurlW500}$imagesrc",
        //*Ketika data list bisa null seperti "backdropPath" di atas maka harus menggunakan code seperti di atas
        //*Alasan "AppsConstant.imageurlW500" di panggil karena data image sebagian ada di "imageurlW500"
        height: height,
        width: width,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return SizedBox(
            width: width,
            height: height,
            child: Icon(Icons.broken_image_rounded),
          );
        },
        //*Jadi ketika fit dan sized box nya sudah di atur di sini tidak perlu di tulis kembali pada homepage
      ),
    );
  }
}
