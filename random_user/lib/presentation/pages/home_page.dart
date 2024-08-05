import 'package:flutter/material.dart';
import 'package:random_user/data/repository/consumir___api.dart';
import 'package:random_user/data/models/cooperativa_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  alert(String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(msg),
      action: SnackBarAction(
        label: 'Fechar',
        onPressed: () => ScaffoldMessenger.of(context).hideCurrentSnackBar(),
      ),
    ));
  }

  final cooperativas = Api().getCooperativas();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('title'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: FutureBuilder(
        future: cooperativas,
        builder: (context, AsyncSnapshot<List<Cooperativas>> snapshot) {
          return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: InkWell(
                    onTap: () => Navigator.of(context).pushNamed('/detail',
                        arguments: {'title': 'Para Home'}),
                    child: Ink(
                      decoration: BoxDecoration(color: Colors.cyan[50]),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(snapshot.data![index].nome),
                            Text(snapshot.data![index].presidente),
                            Text(snapshot.data![index].fone),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              });
        },
      ),
    );
  }
}
