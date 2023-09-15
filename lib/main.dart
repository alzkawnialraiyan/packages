import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  List<String> images =[
    "https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Flower_jtca001.jpg/1280px-Flower_jtca001.jpg",
    "https://media.istockphoto.com/id/649054168/photo/closeup-of-a-gerbera-daisy-flower-in-the-very-dark-blurry-background.webp?s=170667a&w=0&k=20&c=qzzH2asxLnCrQfB-XMWfXVrS8dXEdD6BGtQm2Bh4fhQ=",
    "https://images.pexels.com/photos/531879/pexels-photo-531879.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqA1eyW_Pn6nGMtY_M45GuOLVlpJtLGNc0zoNBzAySHOR6FlJ3LXnPL0MbQph2lR4cMBU&usqp=CAU",
    "https://media.istockphoto.com/id/1294416926/photo/isolated-blue-anemone-flower-on-white-background.jpg?s=170667a&w=0&k=20&c=W7kMuolQOtrIo7zhgotRKmkF-EUKKPKzazyAZNYKXk4="
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(
  options: CarouselOptions(
    height: 200,
    autoPlay: true,
    enlargeCenterPage: true,
    viewportFraction: .9,
    autoPlayAnimationDuration: Duration(milliseconds: 400)
    ),
  items: images.map((e) => Image.network(
    e,
    fit: BoxFit.cover,
    )).toList(),
),
    );
  }
}
