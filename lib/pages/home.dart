import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            headerWidget(),
            slideShowWidget(),
            Padding(
              padding: EdgeInsets.only(
                top: 100,
              ),
            ),
            Center(
              child: Text("Welcome to Home"),
            ),
          ],
        ),
      ),
    );
  }
}

ImageSlideshow slideShowWidget() {
  return ImageSlideshow(
    /// Width of the [ImageSlideshow].
    width: double.infinity,

    /// Height of the [ImageSlideshow].
    height: 300,

    /// The page to show when first creating the [ImageSlideshow].
    initialPage: 0,

    /// The color to paint the indicator.
    indicatorColor: Colors.blue,

    /// The color to paint behind th indicator.
    indicatorBackgroundColor: Colors.grey,

    /// The widgets to display in the [ImageSlideshow].
    /// Add the sample image file into the images folder
    children: [
      Image.asset(
        'assets/images/img_lights_wide.jpg',
        fit: BoxFit.cover,
      ),
      Image.asset(
        'assets/images/img_mountains_wide.jpg',
        fit: BoxFit.cover,
      ),
      Image.asset(
        'assets/images/img_snow_wide.jpg',
        fit: BoxFit.cover,
      ),
    ],

    /// Called whenever the page in the center of the viewport changes.
    onPageChanged: (value) {
      print('Page changed: $value');
    },

    /// Auto scroll interval.
    /// Do not auto scroll with null or 0.
    autoPlayInterval: 3000,

    /// Loops back to first slide.
    isLoop: true,
  );
}

class headerWidget extends StatelessWidget {
  const headerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 100.0),
              ),
              const Text(
                "Sachin's Blog",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  // fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
          Container(
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Menu",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Blog",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Contact",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "About",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 100.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
