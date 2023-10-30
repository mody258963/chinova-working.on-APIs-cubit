import 'package:chinova/web_servese/model/username.dart';
import 'package:chinova/web_servese/model/web_serv.dart';


class MyRepo {
  final RestClient restClient;

  MyRepo(Object object, {required this.restClient});

  Future<List<Username>> getAllUsers() async {
    var response = await restClient.getAllUsers();

    return response
        .map((userObjectfromJson) => Username.fromJson(userObjectfromJson.toJson()))
        .toList();
  }
}
