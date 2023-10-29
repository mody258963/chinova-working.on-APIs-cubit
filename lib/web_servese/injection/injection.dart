import 'package:chinova/besnese_logic/get_method/get_method_cubit.dart';
import 'package:chinova/web_servese/reproserty/myRepo.dart';
import 'package:chinova/web_servese/web_serv.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerLazySingleton<GetMethodCubit>(()=> GetMethodCubit(getIt()));
    getIt.registerLazySingleton<MyRepo>(()=> MyRepo(getIt(), restClient: getIt()));
      getIt.registerLazySingleton<RestClient>(()=> RestClient(Dio()));


// Alternatively you could write it if you don't like global variables

}
