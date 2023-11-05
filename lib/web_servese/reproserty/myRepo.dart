import 'package:chinova/web_servese/model/username.dart';
import 'package:chinova/web_servese/model/web_serv.dart';

class MyRepo {
  final NameWebServise nameWebService;

  MyRepo(this.nameWebService);

  Future<List<Username>> getAllUsers() async {
    final names = await nameWebService.getAllUsers();
    return names.map((names) => Username.fromJson(names)).toList();
  }
}
