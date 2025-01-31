import 'package:flutter/material.dart';
import 'package:lecun_app/screens/home_page.dart';
import 'package:lecun_app/screens/upload_confirm_page.dart';
import 'package:lecun_app/theme/pallete.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LeCun',
      theme: Pallete.lightModeAppTheme,
      home: UploadConfirmPage
      (),
    );
  }
}
