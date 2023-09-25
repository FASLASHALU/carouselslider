import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green,
        title: Text("Carousel Slider",style: TextStyle(color: Colors.black),),
      ),
      body: content(),
    );
  }

  Widget content() {
    return Container(
      child: CarouselSlider(
          items: [1, 2, 3, 4, 5].map((i) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text("Text $i",style: TextStyle(fontSize: 40),)),
            );
          }).toList(),
          options: CarouselOptions(
            height: 300,
          )),
    );
  }
}
