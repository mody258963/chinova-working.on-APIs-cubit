import 'package:chinova/costanse/strings.dart';
import 'package:chinova/web_servese/model/username.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class NameWebServise {
  final dio = Dio(); 
  dio.interceptors.

  Future<List<dynamic>> getAllUsers() async {
    try {
      final response = await dio.get(
        baseUrl + 'products',
      );

      print(response);
      return response.data;
    } catch (e) {
      print("======dio=======${e.toString()}");
      return [];
    }
  }

}
