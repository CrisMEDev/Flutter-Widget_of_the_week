import 'package:flutter/material.dart';

import 'package:widget_of_the_week/src/pages/widgets_of_the_week.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widget of the week',

      initialRoute: '/animatedContainer',

      routes: {
        '/safeArea'                    : ( BuildContext context ) => SafeAreaPage(),
        '/expanded'                    : ( BuildContext context ) => ExpandedPage(),
        '/wrap'                        : ( BuildContext context ) => WrapPage(),
        '/animatedContainer'           : ( BuildContext context ) => AnimatedContainerPage(),
      },
    );
  }
}