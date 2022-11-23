import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Normal"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Image.network(
          "https://c0.wallpaperflare.com/path/295/499/674/white-teal-and-red-sports-car-on-park-with-door-open-during-daytime-ae392d78a84e714f2d8729bff45f7b9e.jpg",
          height: double.infinity,
          width:  double.infinity,
          fit:    BoxFit.cover,
        ),
      ),
    );
  }
}