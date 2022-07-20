import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testimonials_grid_section/providers/rootSizeProvider.dart';
import 'package:testimonials_grid_section/screens/homePage.dart';
import 'package:testimonials_grid_section/styling.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => RootSizeProvider(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: themeData,
      home: const HomePage(),
    );
  }
}
