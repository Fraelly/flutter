import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:random_user/key.dart';

void main() {
  test('consumir   api ...', () async {
    final dio = Dio();
    final response = await dio.get(urlBase,
        options: Options(
          headers: {'apikey': apikey},
        ));
    final data = response.data;
    print(data[0]);
  });
}
