import 'package:chinova/web_servese/model/username.dart';
import 'package:chinova/web_servese/model/web_serv.dart';

class MyRepo {
  final NameofCharactors nameofCharactors;

  MyRepo(this.nameofCharactors);

  Future<List<Username>> getAllUsers() async {
    final names = await nameofCharactors.getAllUsers();
    return names.map((name) => Username.fromJson(name)).toList();
  }
}
