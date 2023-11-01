import 'package:chinova/costanse/strings.dart';
import 'package:chinova/web_servese/model/username.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

class NameofCharactors {
  late Dio dio;

  NameWebservese() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(seconds: 20), //20 second
      receiveTimeout: const Duration(seconds: 20),
    );
    dio = Dio(options);
  }

  Future<List<dynamic>> getAllUsers() async {
    try {
      Response response = await dio.get('users');
      print(response.data.toString());
      return response.data;
    } catch (e) {
      print("=============${e.toString()}");
      return [];
    }
  }
}
