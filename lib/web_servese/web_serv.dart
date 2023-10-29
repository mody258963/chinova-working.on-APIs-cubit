import 'package:chinova/web_servese/model/Users.dart';
import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';

part 'web_serv.g.dart';

@RestApi(baseUrl: 'https://gorest.co.in/public/v2/users')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('users')
  Future<List<Users>> getAllUsers();
}
