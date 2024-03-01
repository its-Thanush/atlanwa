import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      indicatorColor: Colors.deepOrange.shade300,
      indicatorBackgroundColor: Colors.white,
      height: 300,
      autoPlayInterval: 3000,
      indicatorRadius: 4,
      isLoop: true,
      children: [
        Padding(padding: const EdgeInsets.all(8),
        child: Image.asset('assets/images/laser1.jpg'),
        ),
        Padding(padding: const EdgeInsets.all(8),
          child: Image.asset('assets/images/printer.jpg'),
        ),
        Padding(padding: const EdgeInsets.all(8),
          child: Image.asset('assets/images/drone.jpg'),
        ),
      ],
    );
  }
}
