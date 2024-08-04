import 'package:flutter/material.dart';
import 'package:random_user/data/repository/consumir___api.dart';
import 'package:random_user/data/models/cooperativa_model.dart';

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
        title: const Text('ola'),
        backgroundColor: Colors.amberAccent,
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
                    onTap: () => alert('Tok no Containe'),
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
