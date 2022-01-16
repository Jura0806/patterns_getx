import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:patterns_getx/pages/create_post.dart';
import 'package:patterns_getx/pages/home_page.dart';
import 'package:patterns_getx/pages/post_detail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      getPages: [
        GetPage(name: "/home_page", page: () => HomePage()),
        GetPage(name: "/create_page", page: () => CreatePost()),
        GetPage(name: "/one_info_page", page: () => DetailPage()),
      ],
    );
  }
}
