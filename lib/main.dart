import 'package:all_about_flutter/widgets/corousel_pageview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
final dataMarvel = <String>[
  'assets/images/spidy.gif',
  'assets/images/spider1.gif',
  'assets/images/spidey2.gif',
  'assets/images/spider3.gif',
];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CorouselPageView(dataMarvel)
      ),
    );
  }
}

