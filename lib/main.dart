import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:state_managements_apps/provider/counter.dart';
import 'package:state_managements_apps/ui/screens/provider_screen.dart';
import 'bloc/counter_bloc.dart';
import 'ui/screens/bloc_screen.dart';
import 'utils/app_theme.dart';

void main() {
  runApp(MyApp());
//  runApp(
//      MultiProvider(
//        providers: [
//          ChangeNotifierProvider(create: (_) => Counter()),
//        ],
//        child: MyApp(),
//      ),);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme(),
      debugShowCheckedModeBanner: false,
      home: ProviderScreen(),
//      BlocProvider<CounterBloc>(
//        create: (context) => CounterBloc(0),
//        child: BlocScreen(),
//      ),
    );
  }
}
