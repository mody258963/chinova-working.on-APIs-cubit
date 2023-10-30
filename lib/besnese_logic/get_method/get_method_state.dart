import 'package:chinova/web_servese/model/username.dart';

sealed class GetMethodState {}
class GetMethodInitial extends GetMethodState{}
class Laoding extends GetMethodState{}


class AllItemsState extends GetMethodState {
  final List<Username>  allusersList;

  AllItemsState({required this.allusersList});
}
