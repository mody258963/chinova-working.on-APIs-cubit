import 'package:chinova/web_servese/reproserty/myRepo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:chinova/besnese_logic/get_method/get_method_state.dart';

class GetMethodCubit extends Cubit<GetMethodState> {
  final MyRepo myRepo;
  GetMethodCubit(this.myRepo) : super(GetMethodState(isLoading: true));



  
}
// emit(state.copyWith(isLoading: true));
	