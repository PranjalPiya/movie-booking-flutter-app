import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_learn_one/core/extensions/text_extensions.dart';
import 'package:flutter_learn_one/core/theme/colors.dart';
import 'package:flutter_learn_one/core/utils/movie_list.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  // Dummy list of image URLs for demonstration
  List<String> imageUrls = [
    'assets/images/Salaar.jpg',
    'assets/images/john_wick_chapter_4.jpg',
    'assets/images/toy_story_4.jpg',
    'assets/images/evil_dead_rise.jpg'
  ];
  // Index of the currently selected image
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      opacity: 0.7,
                      image: AssetImage(imageUrls[currentIndex]))),
              child: ClipRRect(
                child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                    child: Container(
                      height: size.height * 0.4,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 255, 255, 1)
                            .withOpacity(0.25),
                        // borderRadius: BorderRadius.circular(15),
                      ),
                    )),
              ),
            ),
            getGradient(context),
            getGradient2(context),
            stackedContainer(
              size: size,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

Container getGradient(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return Container(
    margin: EdgeInsets.only(top: size.height * 0.4),
    height: size.height * 0.3,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: <Color>[
          // Color(0x00736AB7), Colors.black,
          const Color.fromARGB(255, 124, 123, 123).withOpacity(0.01),
          const Color.fromRGBO(255, 255, 255, 1).withOpacity(0.45),
        ],
        stops: const [0.0, 1.9],
        begin: const FractionalOffset(0.0, 1),
        end: const FractionalOffset(0.0, 0.0),
      ),
    ),
  );
}

Container getGradient2(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return Container(
    margin: EdgeInsets.only(top: size.height * 0.0),
    height: size.height * 0.4,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: <Color>[
          const Color.fromARGB(255, 124, 123, 123).withOpacity(0.1),
          const Color.fromRGBO(255, 255, 255, 1).withOpacity(0.25),
        ],
        stops: const [0.0, 1.9],
        begin: const FractionalOffset(0.0, 0.0),
        end: const FractionalOffset(0.0, 1.0),
      ),
    ),
  );
}

Widget stackedContainer(
    {Size? size, Function(int, CarouselPageChangedReason)? onPageChanged}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const SizedBox(
        height: 20,
      ),
      firstContainer(size: size),
      const SizedBox(
        height: 20,
      ),
      CarouselSlider(
        options: CarouselOptions(
          onPageChanged: onPageChanged,
          height: size!.height * 0.8,
          autoPlay: true,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          viewportFraction: 0.8,
          enlargeCenterPage: true,
        ),
        items: movieList.map((movieItem) {
          final List genre = movieItem['Genre'];
          return Builder(
            builder: (BuildContext context) {
              return Column(
                children: [
                  Container(
                    height: size.height * 0.5,
                    width: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('${movieItem['image']}')),
                    ),
                  ),
                  //
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.access_time,
                        color: AppColors.whiteColor,
                      ),
                      SizedBox(
                        width: size.width * 0.03,
                      ),
                      Text('${movieItem['totalHours']}'),
                    ],
                  ),
                  //
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Text('${movieItem['name']}',
                      style: context.textTheme.titleLarge),
                  // SizedBox(
                  //   height: size.height * 0.05,
                  // ),
                  // Text('${movieItem['Genre']}'),
                  // const Row(
                  //   children: [],
                  // )
                ],
              );
            },
          );
        }).toList(),
      ),
    ],
  );
}

Widget firstContainer({Size? size}) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(15),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
      child: Container(
        height: size!.height * 0.06,
        width: size.width * 0.5,
        decoration: BoxDecoration(
          color: AppColors.whiteColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(15),
          // border: Border.all(width: 2, color: Colors.white30),
        ),
        child: const Center(
            child: Text(
          'Now In Theaters',
        )),
      ),
    ),
  );
}
