import 'package:chinova/besnese_logic/get_method/get_method_cubit.dart';
import 'package:chinova/besnese_logic/get_method/get_method_state.dart';

import 'package:chinova/web_servese/model/username.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  List<Username> usersList = [];

  @override
  void initState() {
    super.initState();
    BlocProvider.of<GetMethodCubit>(context).emitGetAllUSers();
  }

  void _Circelindecator(BuildContext context) {
    AlertDialog alertDialog = const AlertDialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      content: Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
        ),
      ),
    );
    showDialog(
        context: context,
        barrierColor: Colors.white.withOpacity(0),
        barrierDismissible: false,
        builder: (context) {
          return alertDialog;
        });
  }

  Widget _buildPhoneNumberSumbit(BuildContext context) {
    return BlocBuilder<GetMethodCubit, GetMethodState>(
        builder: (context, state) {
      if (state is AllItemsState) {
        usersList = (state).allusersList;
        return ListViewer();
      } else {
        _Circelindecator(context);
      }
      return Text("data");
    });
  }

  Widget ListViewer() {
    return ListView.builder(itemBuilder: ((context, index) {
      return Container(
        height: 58,
        color: Colors.yellow,
        child: Center(
          child: Text(usersList[index].name.toString()),
        ),
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:
            Column(children: [ListViewer(), _buildPhoneNumberSumbit(context)]),
      ),
    );
  }
}
