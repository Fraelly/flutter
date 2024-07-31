import 'package:flutter/material.dart';
import 'package:random_user/consumir___api.dart';
import 'package:random_user/models/cooperativa_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String nome = 'Eu';

  void hand() async {
    final response = ServiceDioData();
    setState(() => data = response as Cooperativas);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ola'),
        backgroundColor: Colors.amberAccent,
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return data != null
            ? ListTile(
                title: Text(data!.title),
              )
            : const Text('erro');
      }),
    );
  }
}
