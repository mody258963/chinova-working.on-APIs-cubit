import 'package:chinova/web_servese/model/Users.dart';
import 'package:chinova/web_servese/web_serv.dart';

class MyRepo {
  final RestClient restClient;

  MyRepo(Object object, {required this.restClient});

  Future<List<Users>> getAllUsers() async {
    var response = await restClient.getAllUsers();

    return response
        .map((userObjectfromJson) => Users.fromJson(userObjectfromJson.toJson()))
        .toList();
  }
}
