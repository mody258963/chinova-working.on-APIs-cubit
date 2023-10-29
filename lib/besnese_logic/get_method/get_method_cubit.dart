import 'package:chinova/besnese_logic/phone_auth/cubit/phone_auth_cubit.dart';
import 'package:chinova/web_servese/reproserty/myRepo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:chinova/besnese_logic/get_method/get_method_state.dart';

class GetMethodCubit extends Cubit<GetMethodState> {
  final MyRepo myRepo;
  GetMethodCubit(this.myRepo) : super(GetMethodInitial());

  void emitGetAllUSers() {
    emit(Loading() as GetMethodState);
    myRepo.getAllUsers().then((usersList) {
      emit(AllItemsState(usersList));
    });
  }
}
// emit(state.copyWith(isLoading: true));
	