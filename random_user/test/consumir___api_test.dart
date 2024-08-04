import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:random_user/domain/key.dart';

void main() {
  test('consumir   api ...', () async {
// class ServiceDioData {
    // Future<List<Cooperativas>> getCooperativas() async {
    final dio = Dio();
    final response = await dio.get(urlBase,
        options: Options(
          headers: {'apikey': apikey},
        ));
    final data = response.data;
    print(data);
    return data;
  }
      // }

      // }
      );
}
