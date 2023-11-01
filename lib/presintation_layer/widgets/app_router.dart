import 'package:chinova/besnese_logic/get_method/get_method_cubit.dart';
import 'package:chinova/besnese_logic/phone_auth/cubit/phone_auth_cubit.dart';
import 'package:chinova/besnese_logic/uploding_data/uploding_data_cubit.dart';
import 'package:chinova/costanse/pages.dart';
import 'package:chinova/presintation_layer/screens/OTP.dart';
import 'package:chinova/presintation_layer/screens/fatchdata.dart';
import 'package:chinova/presintation_layer/screens/login.dart';
import 'package:chinova/web_servese/model/web_serv.dart';
import 'package:chinova/web_servese/reproserty/myRepo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  PhoneAuthCubit? phoneAuthCubit;
  UplodingDataCubit? uplodingDataCubit;
  GetMethodCubit? getMethodCubit;
  MyRepo? myRepo;
  AppRouter() {
    phoneAuthCubit = PhoneAuthCubit();
    uplodingDataCubit = UplodingDataCubit();
    myRepo = MyRepo(NameofCharactors());
    getMethodCubit = GetMethodCubit(myRepo!);
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case logain:
        return MaterialPageRoute(
            builder: (_) => BlocProvider<PhoneAuthCubit>.value(
                  value: phoneAuthCubit!,
                  child: const LoginScreen(),
                ));
      case Optpage:
        final phoneNumber = settings.arguments;
        return MaterialPageRoute(
            builder: (_) => BlocProvider<PhoneAuthCubit>.value(
                  value: phoneAuthCubit!,
                  child: OPTverify(phoneNumber: phoneNumber),
                ));

      case posters:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (BuildContext context) => GetMethodCubit(myRepo!),
                  child: TestPage(),
                ));
    }
    return null;
  }
}
