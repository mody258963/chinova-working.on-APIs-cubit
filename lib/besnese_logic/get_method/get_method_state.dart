import 'package:chinova/web_servese/model/username.dart';
import 'package:flutter/widgets.dart';

@immutable
sealed class GetMethodState {}

class GetMethodInitial extends GetMethodState {}

class AllItemsState extends GetMethodState {
  final List<Username> allusersList;

  AllItemsState( this.allusersList);
}
