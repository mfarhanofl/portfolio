import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  final List<String> myImages = [
    "assets/p (6).jpg",
    "assets/IMG_20250603_160832.jpg",
    "assets/p (5).jpg",
    "assets/p (4).jpg",
    "assets/IMG_20250603_161217.jpg",
  ];

  int currentImage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height*.4,
            autoPlay: true,
            enlargeCenterPage: true,
            autoPlayInterval: const Duration(seconds: 2),
            autoPlayAnimationDuration: const Duration(milliseconds: 700),
            autoPlayCurve: Curves.fastOutSlowIn,
            onPageChanged: (index, reason) {
              setState(() {
                currentImage = index;
              });
            },
          ),
          items: myImages.map((imgPath) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(imgPath),
                  fit: BoxFit.cover,
                ),
              ),
            );
          }).toList(),
        ),
        const SizedBox(height: 16),
        AnimatedSmoothIndicator(
          activeIndex: currentImage,
          count: myImages.length,
          effect: WormEffect(
            dotHeight: 8,
            dotWidth: 8,
            spacing: 5,
            dotColor: Colors.grey.shade300,
            activeDotColor: Colors.grey.shade900,
          ),
        ),
      ],
    );
  }
}
