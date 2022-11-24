import 'package:flutter/material.dart';
import 'package:progressive_image/progressive_image.dart';

void main() => runApp(pro());

class pro extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Progressive Image Demo')),
        body: ProgressiveImageExample(),
      ),
    );
  }
}

class ProgressiveImageExample extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Container(
            child:ProgressiveImage(
                placeholder: AssetImage('assets/images/placeholder.jpg'),
                // size: 4.82KB
                thumbnail: NetworkImage('https://c0.wallpaperflare.com/preview/295/499/674/white-teal-and-red-sports-car-on-park-with-door-open-during-daytime.jpg'),
                // size: 4.00MB
                image: NetworkImage('https://c0.wallpaperflare.com/path/295/499/674/white-teal-and-red-sports-car-on-park-with-door-open-during-daytime-ae392d78a84e714f2d8729bff45f7b9e.jpg'),
                height: double.infinity,
                width:  double.infinity,
                fit:    BoxFit.cover,
                fadeDuration:const Duration(milliseconds:500),
            ),
        );
    }
}
//code