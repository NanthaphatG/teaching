import 'package:flutter/material.dart';
import 'package:flutter_image_slider/carousel.dart';
//import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({Key? key}) : super(key: key);

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo'),
      ),

      body:Container(
        height: size.height,
        width: size.width,
      child: Column(
        children: [
          Container(
              height: size.height * 0.35,
              width: size.width,
              child: Carousel(
                indicatorBarColor: Colors.black.withOpacity(0.2),
                autoScrollDuration: Duration(seconds: 2),
                animationPageDuration: Duration(milliseconds: 400),
                activateIndicatorColor: Colors.black,
                animationPageCurve: Curves.bounceInOut,
                indicatorBarHeight: 50,
                indicatorHeight: 20,
                indicatorWidth: 20,
                unActivatedIndicatorColor: Colors.grey,
                stopAtEnd: true,
                autoScroll: true,
                // widgets
                items: [
                  Container(
                    //color: Colors.blue,
                    child: Image.network('https://www.cheatsheet.com/wp-content/uploads/2022/05/TXT-Taehyun-1.jpg',fit: BoxFit.cover),
                  ),
                  Container(
                    child: Image.network('https://kaishiuniverse.files.wordpress.com/2022/02/whatsapp-image-2022-03-15-at-17.24.05.jpeg',fit: BoxFit.cover,),
                  ),
                  Container(
                    child: Image.network('https://kaishiuniverse.files.wordpress.com/2022/03/whatsapp-image-2022-03-15-at-20.20.15.jpeg',fit: BoxFit.cover,),
                  )
                ],
              )
          )
        ],
      ),

      /*ImageSlideshow(
        // width: double.infinity,
        // height: 200,
        // initialPage: 0,
        // indicatorColor: Colors.blue,
        // indicatorBackgroundColor: Colors.grey,
        // children: [
        //   Image.network('https://www.cheatsheet.com/wp-content/uploads/2022/05/TXT-Taehyun-1.jpg',fit: BoxFit.cover,),
        //   Image.network('https://kaishiuniverse.files.wordpress.com/2022/02/whatsapp-image-2022-03-15-at-17.24.05.jpeg',fit: BoxFit.cover,),
        //   Image.network('https://kaishiuniverse.files.wordpress.com/2022/03/whatsapp-image-2022-03-15-at-20.20.15.jpeg',fit: BoxFit.cover,),
        //   Image.network('https://w2c2p4b2.stackpathcdn.com/wp-content/uploads/2019/01/TXT_What-do-you-do_HUENINGKAI.jpg',fit: BoxFit.cover,),
        //   Image.network('https://img.kpopmap.com/680x384/2020/03/Beomgyu-2.jpg',fit: BoxFit.cover,),
        // ],
        // onPageChanged: (value) {
        //   print('Page changed: $value');
        // },
        //
        // autoPlayInterval: 3000,
        //
        // isLoop: false,
        width: double.infinity,
        height: 200,
        initialPage: 0,
        indicatorColor: Colors.blue,
        indicatorBackgroundColor: Colors.grey,
        children: [
          Image.asset(
            'images/sample_image_1.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'images/sample_image_2.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'images/sample_image_3.jpg',
            fit: BoxFit.cover,
          ),
        ],
        onPageChanged: (value) {
          print('Page changed: $value');
        },
        autoPlayInterval: 3000,
      ),*/
      )
    );
  }
}
