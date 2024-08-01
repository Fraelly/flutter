// import 'package:dio/dio.dart';
// import 'package:random_user/models/random_user_model.dart';

// Future<RandomUser> getRandomUser() async {
//   const url = "https://randomuser.me/api/";
//   final dio = Dio();
//   final response = await dio.get(url);

//   if (response.statusCode == 200) {
//     return RandomUser.fromJson(response.data);
//   } else {
//     throw Exception("Deu ruim");
//   }
// }
