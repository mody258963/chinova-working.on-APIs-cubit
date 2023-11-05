import 'package:chinova/besnese_logic/phone_auth/cubit/phone_auth_cubit.dart';
import 'package:chinova/web_servese/model/username.dart';
import 'package:chinova/web_servese/reproserty/myRepo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:chinova/besnese_logic/get_method/get_method_state.dart';

class GetMethodCubit extends Cubit<GetMethodState> {
  final MyRepo myRepo;
  List<Username>? myallUsers;
  GetMethodCubit(this.myRepo) : super(GetMethodInitial());

  List<Username>? emitGetAllUSers() {
    try {
      myRepo.getAllUsers().then((allusersList) {
        emit(AllItemsState(allusersList));
        myallUsers = allusersList;
        print('(=====cubit list=====$myallUsers');
      });
    } catch (error) {
      print('=================${error.toString()}');
    }
    return myallUsers;
  }
}
// emit(state.copyWith(isLoading: true));
	