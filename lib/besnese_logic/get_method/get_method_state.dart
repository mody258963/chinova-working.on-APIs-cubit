import 'package:chinova/web_servese/model/Users.dart';

sealed class GetMethodState {}
class GetMethodInitial extends GetMethodState{}
class Laoding extends GetMethodState{}


class AllItemsState extends GetMethodState {
  AllItemsState(List<Users> usersList);
}
