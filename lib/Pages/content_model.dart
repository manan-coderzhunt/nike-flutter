import 'package:flutter/material.dart';

class OnBoardingContent {
  late String image;
  late String title;
  late String description;

  OnBoardingContent(
      {required this.description, required this.image, required this.title});
}

List<OnBoardingContent> contents = [
  OnBoardingContent(
      description:
      'Smart, Gorgeous &\nFashonable Collection',
      image: 'assets/images/splash1.png',
      title: 'Start Journey With\n Nike'),
  OnBoardingContent(
      description:
      'There Are Many Beautiful And\n Attractive Plants To Your Room',
      image: 'assets/images/splash3.png',
      title: 'Follow Latest \n Style Shoes'),
  OnBoardingContent(
      description: 'Amet Minim Lit Nodeseru Saku\n Nandu sit Alique Dolor',
      image: 'assets/images/splash1.png',
      title: 'Summer Shoes\n Nike 2022'),
];
