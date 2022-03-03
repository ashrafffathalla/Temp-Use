import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:temp_tests/layout/news_app/news_layout.dart';
import 'package:temp_tests/shared/blocobserver.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:temp_tests/shared/network/remote/dio_helper.dart';

void main()
{

  Bloc.observer = MyBlocObserver();
  DioHelper.int();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme:const AppBarTheme(
          backgroundColor: Colors.white,
          //color: Colors.transparent,
          backwardsCompatibility: false,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.dark
          ),
        ),
      ),
      home: const NewsLayout(),
    );
  }
}
