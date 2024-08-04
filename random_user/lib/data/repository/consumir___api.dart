import 'dart:async';
import 'dart:convert';

import 'package:random_user/domain/key.dart';
import 'package:http/http.dart' as http;

import '../models/cooperativa_model.dart';

class Api {
  List<Cooperativas> cooperativasDisplayList = [];

  Future<List<Cooperativas>> getCooperativas() async {
    final response =
        await http.get(Uri.parse(urlBase), headers: {'apikey': apikey});
    var data = jsonDecode(response.body.toString());

    //check if the response request was srccessful or not.
    if (response.statusCode == 200) {
      for (Map i in data) {
        Cooperativas cooperativas = Cooperativas(
            nome: i['nome'],
            id: 0,
            presidente: i['presidente'],
            fone: i['fone']);
        cooperativasDisplayList.add(cooperativas);
      }
      return cooperativasDisplayList;
    } else {
      return cooperativasDisplayList;
    }
  }
}
