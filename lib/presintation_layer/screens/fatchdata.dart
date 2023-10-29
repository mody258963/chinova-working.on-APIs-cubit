import 'package:chinova/besnese_logic/get_method/get_method_cubit.dart';
import 'package:chinova/besnese_logic/get_method/get_method_state.dart';
import 'package:chinova/web_servese/model/Users.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  List<Users> usersList = [];

  @override
  void initState() {
    super.initState();
    BlocProvider.of<GetMethodCubit>(context).emitGetAllUSers();
  }

  Widget _buildPhoneNumberSumbit() {
    return BlocListener<GetMethodCubit, GetMethodState>(
      listenWhen: (previous, current) {
        return previous != current;
      },
      listener: (BuildContext context, GetMethodState state) {
        if (state is Laoding) {
          _Circelindecator(context);
        }
        if (state is PhonwNumberSumbited) {
          Navigator.maybePop(context);
          Navigator.of(context, rootNavigator: true).pushNamed(
            Optpage,
            arguments: phoneNumber,
          );
        }
        if (state is ErrorOccurred) {
          String erromasg = (state).errorMsg;
          print("===================================== $erromasg");
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(erromasg),
            backgroundColor: Colors.black,
            duration: const Duration(seconds: 6),
          ));
        }
      },
      child: Container(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
