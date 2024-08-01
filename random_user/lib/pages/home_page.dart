import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:random_user/consumir___api.dart';
import 'package:random_user/key.dart';
import 'package:random_user/models/cooperativa_model.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Api api = Api()..getCooperativas();

  // List<Cooperativas> cooperativasDisplayList = [];

  // Future<List<Cooperativas>> getCooperativas() async {
  //   final response =
  //       await http.get(Uri.parse(urlBase), headers: {'apikey': apikey});
  //   var data = jsonDecode(response.body.toString());

  //   //check if the response request was srccessful or not.
  //   if (response.statusCode == 200) {
  //     for (Map i in data) {
  //       Cooperativas cooperativas = Cooperativas(
  //           nome: i['nome'],
  //           id: 0,
  //           presidente: i['presidente'],
  //           fone: i['fone']);
  //       cooperativasDisplayList.add(cooperativas);
  //     }
  //     return cooperativasDisplayList;
  //   } else {
  //     return cooperativasDisplayList;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ola'),
        backgroundColor: Colors.amberAccent,
      ),
      body: FutureBuilder(
        future: Api().getCooperativas(),
        builder: (context, AsyncSnapshot<List<Cooperativas>> snapshot) {
          return ListView.builder(itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Container(
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
            );
          });

          // data != null
          //     ? ListTile(
          //         title: Text(data!.nome),
          //       )
          //     : const Text('erroooooooo');
        },
      ),
    );
  }
}
