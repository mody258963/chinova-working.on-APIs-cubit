import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:chinova/besnese_logic/get_method/get_method_cubit.dart';
import 'package:chinova/besnese_logic/get_method/get_method_state.dart';

class GetMethodScreen extends StatefulWidget {
	const GetMethodScreen({Key? key}) : super(key: key);
	
	@override
	_GetMethodScreenState createState() => _GetMethodScreenState();
}
	
class _GetMethodScreenState extends State<GetMethodScreen> {
	final screenCubit = GetMethodCubit();
	
	@override
	void initState() {
		screenCubit.loadInitialData();
		super.initState();
	}
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: BlocConsumer<GetMethodCubit, GetMethodState>(
				bloc: screenCubit,
				listener: (BuildContext context, GetMethodState state) {
					if (state.error != null) {
						// TODO your code here
					}
				},
				builder: (BuildContext context, GetMethodState state) {
					if (state.isLoading) {
						return Center(child: CircularProgressIndicator());
					}
	
					return buildBody(state);
				},
			),
		);
	}
	
	Widget buildBody(GetMethodState state) {
		return ListView(
			children: [
				// TODO your code here
			],
		);
	}
}
