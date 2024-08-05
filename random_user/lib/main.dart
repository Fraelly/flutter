import 'package:flutter/material.dart';
import 'package:random_user/presentation/pages/detail.dart';
import 'package:random_user/presentation/pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.green,
        ),
      ),
      debugShowCheckedModeBanner: false,
      // home: const HomePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/detail': (context) => const DetailPage(),
      },
    );
  }
}
