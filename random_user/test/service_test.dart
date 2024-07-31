import 'package:random_user/consumir___api.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('test service', () async {
    final service = ServiceDioData();
    final data = await service.getCooperativas();
    print(data);
  });
}
