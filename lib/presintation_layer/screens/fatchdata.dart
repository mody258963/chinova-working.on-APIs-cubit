import 'package:chinova/besnese_logic/get_method/get_method_cubit.dart';
import 'package:chinova/besnese_logic/get_method/get_method_state.dart';
import 'package:chinova/besnese_logic/phone_auth/cubit/phone_auth_cubit.dart';

import 'package:chinova/web_servese/model/username.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  List<Username> usersList = [];

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

  Widget _buildPhoneNumberSumbit() {
    return BlocBuilder<GetMethodCubit, GetMethodState>(
        builder: (context, state) {
      if (state is AllItemsState) {
        final allUsersList = state.allusersList;
        return SizedBox(
          height: 500,
          child: ListView.builder(
            itemCount: allUsersList.length,
            itemBuilder: (context, index) {
              final user = allUsersList[index];
              return ListTile(
                title: Text(user.title.toString()),
                subtitle: Text(user.price.toString()),
              );
            },
          ),
        );
      }
      return Container();
    });
  }

  Widget ListViewer() {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: usersList.length,
        itemBuilder: ((context, index) {
          return Container(
            height: 58,
            color: Colors.yellow,
            child: Center(
              child: Text(usersList[index].title.toString()),
            ),
          );
        }));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("fuck")),
        body: Column(children: [
          _buildPhoneNumberSumbit(),
          ElevatedButton(
              onPressed: () {
                BlocProvider.of<GetMethodCubit>(context).emitGetAllUSers();
              },
              child: Text("mohamed"))
        ]),
      ),
    );
  }
}
