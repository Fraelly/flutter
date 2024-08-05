import 'package:flutter/material.dart';

import '../../data/repository/consumir___api.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final cooperativas = Api().getCooperativas();

  @override
  Widget build(BuildContext context) {
// busca o valor de outra page
    final routevalue =
        ModalRoute.of(context)?.settings.arguments as Map<dynamic, dynamic>;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Detail'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Column(
          children: [
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('cooperativas'),
              ],
            ),
            ElevatedButton(
              child: Text(routevalue['title']),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
