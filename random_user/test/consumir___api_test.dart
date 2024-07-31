import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:random_user/consumir___api.dart';
import 'package:random_user/key.dart';
import 'package:random_user/models/cooperativa_model.dart';

void main() {
  test('consumir   api ...', () {
// class ServiceDioData {
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

      // }
      );
}
