import 'package:json_annotation/json_annotation.dart';


part  "username.g.dart";


@JsonSerializable()
class Username {
  int? id;
  String? name;
  String? email;
  String? gender;
  String? status;

  Username({required this.id,required this.name, required this.email,required this.gender,required this.status});

  factory Username.fromJson(Map<String, dynamic> json) => _$UsernameFromJson(json);

  Map<String, dynamic> toJson() => _$UsernameToJson(this);
  
}
