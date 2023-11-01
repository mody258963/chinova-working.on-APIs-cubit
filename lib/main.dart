import 'package:chinova/besnese_logic/get_method/get_method_cubit.dart';
import 'package:chinova/costanse/pages.dart';
import 'package:chinova/presintation_layer/screens/fatchdata.dart';
import 'package:chinova/presintation_layer/widgets/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

String? initialRoute;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

   initialRoute = posters;

  runApp(MyApp(
    appRouter: AppRouter(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.appRouter});

  final AppRouter appRouter;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
      initialRoute: initialRoute,
    );
  }
}
