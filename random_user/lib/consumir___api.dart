import 'dart:async';

import 'package:dio/dio.dart';
import 'package:random_user/key.dart';

import 'models/cooperativa_model.dart';

class ServiceDioData {
  Future<List<Cooperativas>> getCooperativas() async {
    final dio = Dio();
    final response = await dio.get(urlBase,
        options: Options(
          headers: {'apikey': apikey},
        ));
    final data = response.data;
    // print(data);
    return data;
  }
}
